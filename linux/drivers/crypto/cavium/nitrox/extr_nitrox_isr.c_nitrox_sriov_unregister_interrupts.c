
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct nitrox_q_vector {int valid; int resp_tasklet; } ;
struct TYPE_3__ {int vector; } ;
struct TYPE_4__ {TYPE_1__ msix; } ;
struct nitrox_device {int num_vecs; struct nitrox_q_vector* qvec; TYPE_2__ iov; struct pci_dev* pdev; } ;


 int free_irq (int,struct nitrox_q_vector*) ;
 int irq_set_affinity_hint (int,int *) ;
 int kfree (struct nitrox_q_vector*) ;
 int pci_disable_msix (struct pci_dev*) ;
 int tasklet_disable (int *) ;
 int tasklet_kill (int *) ;

void nitrox_sriov_unregister_interrupts(struct nitrox_device *ndev)
{
 struct pci_dev *pdev = ndev->pdev;
 int i;

 for (i = 0; i < ndev->num_vecs; i++) {
  struct nitrox_q_vector *qvec;
  int vec;

  qvec = ndev->qvec + i;
  if (!qvec->valid)
   continue;

  vec = ndev->iov.msix.vector;
  irq_set_affinity_hint(vec, ((void*)0));
  free_irq(vec, qvec);

  tasklet_disable(&qvec->resp_tasklet);
  tasklet_kill(&qvec->resp_tasklet);
  qvec->valid = 0;
 }
 kfree(ndev->qvec);
 ndev->qvec = ((void*)0);
 pci_disable_msix(pdev);
}
