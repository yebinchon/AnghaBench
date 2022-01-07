
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int __sandybridge_pcode_rw (struct drm_i915_private*,int,int*,int *,int,int ,int) ;

__attribute__((used)) static bool skl_pcode_try_request(struct drm_i915_private *i915, u32 mbox,
      u32 request, u32 reply_mask, u32 reply,
      u32 *status)
{
 *status = __sandybridge_pcode_rw(i915, mbox, &request, ((void*)0),
      500, 0,
      1);

 return *status || ((request & reply_mask) == reply);
}
