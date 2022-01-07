
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_overlay {int flip_addr; int active; struct drm_i915_private* i915; } ;
struct i915_vma {int dummy; } ;
typedef int i915_request ;
struct drm_i915_private {int dummy; } ;


 int DOVSTA ;
 int DRM_DEBUG (char*,int) ;
 int I915_READ (int ) ;
 scalar_t__ IS_ERR (int*) ;
 int MI_OVERLAY_CONTINUE ;
 int MI_OVERLAY_FLIP ;
 int OFC_UPDATE ;
 int PTR_ERR (int*) ;
 int WARN_ON (int) ;
 int* alloc_request (struct intel_overlay*,int *) ;
 int i915_request_add (int*) ;
 int intel_overlay_flip_prepare (struct intel_overlay*,struct i915_vma*) ;
 int intel_ring_advance (int*,int*) ;
 int* intel_ring_begin (int*,int) ;

__attribute__((used)) static int intel_overlay_continue(struct intel_overlay *overlay,
      struct i915_vma *vma,
      bool load_polyphase_filter)
{
 struct drm_i915_private *dev_priv = overlay->i915;
 struct i915_request *rq;
 u32 flip_addr = overlay->flip_addr;
 u32 tmp, *cs;

 WARN_ON(!overlay->active);

 if (load_polyphase_filter)
  flip_addr |= OFC_UPDATE;


 tmp = I915_READ(DOVSTA);
 if (tmp & (1 << 17))
  DRM_DEBUG("overlay underrun, DOVSTA: %x\n", tmp);

 rq = alloc_request(overlay, ((void*)0));
 if (IS_ERR(rq))
  return PTR_ERR(rq);

 cs = intel_ring_begin(rq, 2);
 if (IS_ERR(cs)) {
  i915_request_add(rq);
  return PTR_ERR(cs);
 }

 *cs++ = MI_OVERLAY_FLIP | MI_OVERLAY_CONTINUE;
 *cs++ = flip_addr;
 intel_ring_advance(rq, cs);

 intel_overlay_flip_prepare(overlay, vma);
 i915_request_add(rq);

 return 0;
}
