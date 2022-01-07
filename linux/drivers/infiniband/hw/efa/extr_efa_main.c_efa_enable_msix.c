
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efa_dev {TYPE_1__* pdev; int admin_msix_vector_idx; } ;
struct TYPE_2__ {int dev; } ;


 int EFA_MGMNT_MSIX_VEC_IDX ;
 int EFA_NUM_MSIX_VEC ;
 int ENOSPC ;
 int PCI_IRQ_MSIX ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,int,...) ;
 int pci_alloc_irq_vectors (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static int efa_enable_msix(struct efa_dev *dev)
{
 int msix_vecs, irq_num;


 msix_vecs = EFA_NUM_MSIX_VEC;
 dev_dbg(&dev->pdev->dev, "Trying to enable MSI-X, vectors %d\n",
  msix_vecs);

 dev->admin_msix_vector_idx = EFA_MGMNT_MSIX_VEC_IDX;
 irq_num = pci_alloc_irq_vectors(dev->pdev, msix_vecs,
     msix_vecs, PCI_IRQ_MSIX);

 if (irq_num < 0) {
  dev_err(&dev->pdev->dev, "Failed to enable MSI-X. irq_num %d\n",
   irq_num);
  return -ENOSPC;
 }

 if (irq_num != msix_vecs) {
  dev_err(&dev->pdev->dev,
   "Allocated %d MSI-X (out of %d requested)\n",
   irq_num, msix_vecs);
  return -ENOSPC;
 }

 return 0;
}
