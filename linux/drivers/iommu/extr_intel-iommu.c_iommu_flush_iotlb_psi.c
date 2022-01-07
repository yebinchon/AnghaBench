
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u16 ;
struct TYPE_2__ {int (* flush_iotlb ) (struct intel_iommu*,int ,int,unsigned int,int ) ;} ;
struct intel_iommu {size_t seq_id; int cap; TYPE_1__ flush; } ;
struct dmar_domain {int * iommu_did; } ;


 int BUG_ON (int) ;
 int DMA_TLB_DSI_FLUSH ;
 int DMA_TLB_PSI_FLUSH ;
 int VTD_PAGE_SHIFT ;
 int __roundup_pow_of_two (unsigned int) ;
 int cap_caching_mode (int ) ;
 unsigned int cap_max_amask_val (int ) ;
 int cap_pgsel_inv (int ) ;
 unsigned int ilog2 (int ) ;
 int iommu_flush_dev_iotlb (struct dmar_domain*,int,unsigned int) ;
 int stub1 (struct intel_iommu*,int ,int,unsigned int,int ) ;
 int stub2 (struct intel_iommu*,int ,int,unsigned int,int ) ;

__attribute__((used)) static void iommu_flush_iotlb_psi(struct intel_iommu *iommu,
      struct dmar_domain *domain,
      unsigned long pfn, unsigned int pages,
      int ih, int map)
{
 unsigned int mask = ilog2(__roundup_pow_of_two(pages));
 uint64_t addr = (uint64_t)pfn << VTD_PAGE_SHIFT;
 u16 did = domain->iommu_did[iommu->seq_id];

 BUG_ON(pages == 0);

 if (ih)
  ih = 1 << 6;






 if (!cap_pgsel_inv(iommu->cap) || mask > cap_max_amask_val(iommu->cap))
  iommu->flush.flush_iotlb(iommu, did, 0, 0,
      DMA_TLB_DSI_FLUSH);
 else
  iommu->flush.flush_iotlb(iommu, did, addr | ih, mask,
      DMA_TLB_PSI_FLUSH);





 if (!cap_caching_mode(iommu->cap) || !map)
  iommu_flush_dev_iotlb(domain, addr, mask);
}
