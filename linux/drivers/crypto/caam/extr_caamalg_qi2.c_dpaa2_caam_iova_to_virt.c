
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpaa2_caam_priv {scalar_t__ domain; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int iommu_iova_to_phys (scalar_t__,int ) ;
 void* phys_to_virt (int ) ;

__attribute__((used)) static void *dpaa2_caam_iova_to_virt(struct dpaa2_caam_priv *priv,
         dma_addr_t iova_addr)
{
 phys_addr_t phys_addr;

 phys_addr = priv->domain ? iommu_iova_to_phys(priv->domain, iova_addr) :
       iova_addr;

 return phys_to_virt(phys_addr);
}
