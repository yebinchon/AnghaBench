
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct intel_vgpu {int dummy; } ;


 unsigned long I915_GTT_PAGE_SHIFT ;
 int intel_gvt_ggtt_gmadr_g2h (struct intel_vgpu*,unsigned long,unsigned long*) ;

int intel_gvt_ggtt_index_g2h(struct intel_vgpu *vgpu, unsigned long g_index,
        unsigned long *h_index)
{
 u64 h_addr;
 int ret;

 ret = intel_gvt_ggtt_gmadr_g2h(vgpu, g_index << I915_GTT_PAGE_SHIFT,
           &h_addr);
 if (ret)
  return ret;

 *h_index = h_addr >> I915_GTT_PAGE_SHIFT;
 return 0;
}
