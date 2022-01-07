
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_iommu_domain {int pgt_pa; int pgt_va; struct mtk_iommu_data* data; } ;
struct mtk_iommu_data {int dev; } ;
struct iommu_domain {int dummy; } ;


 int M2701_IOMMU_PGT_SIZE ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int kfree (struct mtk_iommu_domain*) ;
 struct mtk_iommu_domain* to_mtk_domain (struct iommu_domain*) ;

__attribute__((used)) static void mtk_iommu_domain_free(struct iommu_domain *domain)
{
 struct mtk_iommu_domain *dom = to_mtk_domain(domain);
 struct mtk_iommu_data *data = dom->data;

 dma_free_coherent(data->dev, M2701_IOMMU_PGT_SIZE,
   dom->pgt_va, dom->pgt_pa);
 kfree(to_mtk_domain(domain));
}
