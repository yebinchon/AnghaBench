
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_iommu_domain {struct mtk_iommu_data* data; int pgt_pa; int pgt_va; int pgtlock; } ;
struct mtk_iommu_data {scalar_t__ base; int dev; struct mtk_iommu_domain* m4u_dom; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int M2701_IOMMU_PGT_SIZE ;
 scalar_t__ REG_MMU_PT_BASE_ADDR ;
 int dma_alloc_coherent (int ,int ,int *,int ) ;
 int spin_lock_init (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mtk_iommu_domain_finalise(struct mtk_iommu_data *data)
{
 struct mtk_iommu_domain *dom = data->m4u_dom;

 spin_lock_init(&dom->pgtlock);

 dom->pgt_va = dma_alloc_coherent(data->dev, M2701_IOMMU_PGT_SIZE,
      &dom->pgt_pa, GFP_KERNEL);
 if (!dom->pgt_va)
  return -ENOMEM;

 writel(dom->pgt_pa, data->base + REG_MMU_PT_BASE_ADDR);

 dom->data = data;

 return 0;
}
