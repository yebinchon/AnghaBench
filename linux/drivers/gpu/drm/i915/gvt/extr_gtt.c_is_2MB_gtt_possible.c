
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu {TYPE_2__* gvt; } ;
struct intel_gvt_gtt_pte_ops {int (* get_pfn ) (struct intel_gvt_gtt_entry*) ;} ;
struct intel_gvt_gtt_entry {int dummy; } ;
struct TYPE_3__ {struct intel_gvt_gtt_pte_ops* pte_ops; } ;
struct TYPE_4__ {int dev_priv; TYPE_1__ gtt; } ;


 int EINVAL ;
 int HAS_PAGE_SIZES (int ,int ) ;
 int I915_GTT_PAGE_SIZE_2M ;
 unsigned long INTEL_GVT_INVALID_ADDR ;
 int PageTransHuge (int ) ;
 unsigned long intel_gvt_hypervisor_gfn_to_mfn (struct intel_vgpu*,int ) ;
 int pfn_to_page (unsigned long) ;
 int stub1 (struct intel_gvt_gtt_entry*) ;

__attribute__((used)) static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
 struct intel_gvt_gtt_entry *entry)
{
 struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
 unsigned long pfn;

 if (!HAS_PAGE_SIZES(vgpu->gvt->dev_priv, I915_GTT_PAGE_SIZE_2M))
  return 0;

 pfn = intel_gvt_hypervisor_gfn_to_mfn(vgpu, ops->get_pfn(entry));
 if (pfn == INTEL_GVT_INVALID_ADDR)
  return -EINVAL;

 return PageTransHuge(pfn_to_page(pfn));
}
