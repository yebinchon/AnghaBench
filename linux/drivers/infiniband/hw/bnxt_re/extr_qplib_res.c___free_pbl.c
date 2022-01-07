
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct bnxt_qplib_pbl {int pg_count; scalar_t__ pg_size; int ** pg_map_arr; int ** pg_arr; } ;


 unsigned long PAGE_MASK ;
 int dev_warn (int *,char*,int) ;
 int dma_free_coherent (int *,scalar_t__,void*,int *) ;
 int kfree (int **) ;

__attribute__((used)) static void __free_pbl(struct pci_dev *pdev, struct bnxt_qplib_pbl *pbl,
         bool is_umem)
{
 int i;

 if (!is_umem) {
  for (i = 0; i < pbl->pg_count; i++) {
   if (pbl->pg_arr[i])
    dma_free_coherent(&pdev->dev, pbl->pg_size,
        (void *)((unsigned long)
         pbl->pg_arr[i] &
        PAGE_MASK),
        pbl->pg_map_arr[i]);
   else
    dev_warn(&pdev->dev,
      "PBL free pg_arr[%d] empty?!\n", i);
   pbl->pg_arr[i] = ((void*)0);
  }
 }
 kfree(pbl->pg_arr);
 pbl->pg_arr = ((void*)0);
 kfree(pbl->pg_map_arr);
 pbl->pg_map_arr = ((void*)0);
 pbl->pg_count = 0;
 pbl->pg_size = 0;
}
