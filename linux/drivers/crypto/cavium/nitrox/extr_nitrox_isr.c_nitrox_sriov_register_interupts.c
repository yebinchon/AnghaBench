
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct nitrox_q_vector {int valid; int resp_tasklet; int name; struct nitrox_device* ndev; } ;
struct TYPE_4__ {int entry; int vector; } ;
struct TYPE_3__ {TYPE_2__ msix; } ;
struct nitrox_device {TYPE_1__ iov; int num_vecs; struct nitrox_q_vector* qvec; struct pci_dev* pdev; } ;


 int DEV (struct nitrox_device*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQ_NAMESZ ;
 int NON_RING_MSIX_BASE ;
 int NR_NON_RING_VECTORS ;
 int dev_err (int ,char*,int) ;
 int get_cpu_mask (int) ;
 int irq_set_affinity_hint (int,int ) ;
 struct nitrox_q_vector* kcalloc (int ,int,int ) ;
 int nitrox_sriov_unregister_interrupts (struct nitrox_device*) ;
 int nps_core_int_isr ;
 int nps_core_int_tasklet ;
 int num_online_cpus () ;
 int pci_disable_msix (struct pci_dev*) ;
 int pci_enable_msix_exact (struct pci_dev*,TYPE_2__*,int ) ;
 int request_irq (int,int ,int ,int ,struct nitrox_q_vector*) ;
 int snprintf (int ,int ,char*,int) ;
 int tasklet_init (int *,int ,unsigned long) ;

int nitrox_sriov_register_interupts(struct nitrox_device *ndev)
{
 struct pci_dev *pdev = ndev->pdev;
 struct nitrox_q_vector *qvec;
 int vec, cpu;
 int ret;





 ndev->iov.msix.entry = NON_RING_MSIX_BASE;
 ret = pci_enable_msix_exact(pdev, &ndev->iov.msix, NR_NON_RING_VECTORS);
 if (ret) {
  dev_err(DEV(ndev), "failed to allocate nps-core-int%d\n",
   NON_RING_MSIX_BASE);
  return ret;
 }

 qvec = kcalloc(NR_NON_RING_VECTORS, sizeof(*qvec), GFP_KERNEL);
 if (!qvec) {
  pci_disable_msix(pdev);
  return -ENOMEM;
 }
 qvec->ndev = ndev;

 ndev->qvec = qvec;
 ndev->num_vecs = NR_NON_RING_VECTORS;
 snprintf(qvec->name, IRQ_NAMESZ, "nitrox-core-int%d",
   NON_RING_MSIX_BASE);

 vec = ndev->iov.msix.vector;
 ret = request_irq(vec, nps_core_int_isr, 0, qvec->name, qvec);
 if (ret) {
  dev_err(DEV(ndev), "irq failed for nitrox-core-int%d\n",
   NON_RING_MSIX_BASE);
  goto iov_irq_fail;
 }
 cpu = num_online_cpus();
 irq_set_affinity_hint(vec, get_cpu_mask(cpu));

 tasklet_init(&qvec->resp_tasklet, nps_core_int_tasklet,
       (unsigned long)qvec);
 qvec->valid = 1;

 return 0;

iov_irq_fail:
 nitrox_sriov_unregister_interrupts(ndev);
 return ret;
}
