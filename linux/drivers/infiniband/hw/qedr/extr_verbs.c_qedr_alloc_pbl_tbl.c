
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_pbl_info {int num_pbls; int pbl_size; } ;
struct qedr_pbl {int pa; void* va; } ;
struct qedr_dev {struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int ENOMEM ;
 struct qedr_pbl* ERR_PTR (int ) ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,void*,int ) ;
 struct qedr_pbl* kcalloc (int,int,int ) ;
 int qedr_free_pbl (struct qedr_dev*,struct qedr_pbl_info*,struct qedr_pbl*) ;

__attribute__((used)) static struct qedr_pbl *qedr_alloc_pbl_tbl(struct qedr_dev *dev,
        struct qedr_pbl_info *pbl_info,
        gfp_t flags)
{
 struct pci_dev *pdev = dev->pdev;
 struct qedr_pbl *pbl_table;
 dma_addr_t *pbl_main_tbl;
 dma_addr_t pa;
 void *va;
 int i;

 pbl_table = kcalloc(pbl_info->num_pbls, sizeof(*pbl_table), flags);
 if (!pbl_table)
  return ERR_PTR(-ENOMEM);

 for (i = 0; i < pbl_info->num_pbls; i++) {
  va = dma_alloc_coherent(&pdev->dev, pbl_info->pbl_size, &pa,
     flags);
  if (!va)
   goto err;

  pbl_table[i].va = va;
  pbl_table[i].pa = pa;
 }




 pbl_main_tbl = (dma_addr_t *)pbl_table[0].va;
 for (i = 0; i < pbl_info->num_pbls - 1; i++)
  pbl_main_tbl[i] = pbl_table[i + 1].pa;

 return pbl_table;

err:
 for (i--; i >= 0; i--)
  dma_free_coherent(&pdev->dev, pbl_info->pbl_size,
      pbl_table[i].va, pbl_table[i].pa);

 qedr_free_pbl(dev, pbl_info, pbl_table);

 return ERR_PTR(-ENOMEM);
}
