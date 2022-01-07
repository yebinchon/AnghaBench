
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct intel_vgpu {int dummy; } ;


 unsigned long I915_GTT_PAGE_SHIFT ;
 int intel_gvt_ggtt_gmadr_h2g (struct intel_vgpu*,unsigned long,unsigned long*) ;

int intel_gvt_ggtt_h2g_index(struct intel_vgpu *vgpu, unsigned long h_index,
        unsigned long *g_index)
{
 u64 g_addr;
 int ret;

 ret = intel_gvt_ggtt_gmadr_h2g(vgpu, h_index << I915_GTT_PAGE_SHIFT,
           &g_addr);
 if (ret)
  return ret;

 *g_index = g_addr >> I915_GTT_PAGE_SHIFT;
 return 0;
}
