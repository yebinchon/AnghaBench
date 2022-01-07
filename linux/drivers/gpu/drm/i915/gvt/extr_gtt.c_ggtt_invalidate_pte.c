
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu {TYPE_2__* gvt; } ;
struct intel_gvt_gtt_pte_ops {unsigned long (* get_pfn ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_entry {int dummy; } ;
struct TYPE_3__ {unsigned long scratch_mfn; struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_4__ {TYPE_1__ gtt; } ;


 unsigned long PAGE_SHIFT ;
 int intel_gvt_hypervisor_dma_unmap_guest_page (struct intel_vgpu*,unsigned long) ;
 unsigned long stub1 (struct intel_gvt_gtt_entry*) ;

__attribute__((used)) static void ggtt_invalidate_pte(struct intel_vgpu *vgpu,
  struct intel_gvt_gtt_entry *entry)
{
 struct intel_gvt_gtt_pte_ops *pte_ops = vgpu->gvt->gtt.pte_ops;
 unsigned long pfn;

 pfn = pte_ops->get_pfn(entry);
 if (pfn != vgpu->gvt->gtt.scratch_mfn)
  intel_gvt_hypervisor_dma_unmap_guest_page(vgpu,
      pfn << PAGE_SHIFT);
}
