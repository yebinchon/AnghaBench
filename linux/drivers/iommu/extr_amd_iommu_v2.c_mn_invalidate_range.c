
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_state {int pasid; struct device_state* device_state; } ;
struct mmu_notifier {int dummy; } ;
struct mm_struct {int dummy; } ;
struct device_state {int domain; } ;


 unsigned long PAGE_SIZE ;
 int amd_iommu_flush_page (int ,int ,unsigned long) ;
 int amd_iommu_flush_tlb (int ,int ) ;
 struct pasid_state* mn_to_state (struct mmu_notifier*) ;

__attribute__((used)) static void mn_invalidate_range(struct mmu_notifier *mn,
    struct mm_struct *mm,
    unsigned long start, unsigned long end)
{
 struct pasid_state *pasid_state;
 struct device_state *dev_state;

 pasid_state = mn_to_state(mn);
 dev_state = pasid_state->device_state;

 if ((start ^ (end - 1)) < PAGE_SIZE)
  amd_iommu_flush_page(dev_state->domain, pasid_state->pasid,
         start);
 else
  amd_iommu_flush_tlb(dev_state->domain, pasid_state->pasid);
}
