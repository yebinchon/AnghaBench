
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct nitrox_q_vector {int valid; int resp_tasklet; } ;
struct nitrox_device {int num_vecs; struct nitrox_q_vector* qvec; struct pci_dev* pdev; } ;


 int free_irq (int,struct nitrox_q_vector*) ;
 int irq_set_affinity_hint (int,int *) ;
 int kfree (struct nitrox_q_vector*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int) ;
 int tasklet_disable (int *) ;
 int tasklet_kill (int *) ;

void nitrox_unregister_interrupts(struct nitrox_device *ndev)
{
 struct pci_dev *pdev = ndev->pdev;
 int i;

 for (i = 0; i < ndev->num_vecs; i++) {
  struct nitrox_q_vector *qvec;
  int vec;

  qvec = ndev->qvec + i;
  if (!qvec->valid)
   continue;


  vec = pci_irq_vector(pdev, i);
  irq_set_affinity_hint(vec, ((void*)0));
  free_irq(vec, qvec);

  tasklet_disable(&qvec->resp_tasklet);
  tasklet_kill(&qvec->resp_tasklet);
  qvec->valid = 0;
 }
 kfree(ndev->qvec);
 ndev->qvec = ((void*)0);
 pci_free_irq_vectors(pdev);
}
