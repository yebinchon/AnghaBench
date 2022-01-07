
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_pbl_info {int num_pbls; int pbl_size; } ;
struct qedr_pbl {int pa; int va; } ;
struct qedr_dev {struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;


 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (struct qedr_pbl*) ;

__attribute__((used)) static void qedr_free_pbl(struct qedr_dev *dev,
     struct qedr_pbl_info *pbl_info, struct qedr_pbl *pbl)
{
 struct pci_dev *pdev = dev->pdev;
 int i;

 for (i = 0; i < pbl_info->num_pbls; i++) {
  if (!pbl[i].va)
   continue;
  dma_free_coherent(&pdev->dev, pbl_info->pbl_size,
      pbl[i].va, pbl[i].pa);
 }

 kfree(pbl);
}
