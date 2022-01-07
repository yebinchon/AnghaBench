
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int src_w; } ;
struct TYPE_10__ {int stride; int format; } ;
struct intel_fbc_state_cache {TYPE_5__ plane; TYPE_4__ fb; int flags; int vma; } ;
struct TYPE_9__ {int stride; int format; } ;
struct TYPE_8__ {int fence_y_offset; int i9xx_plane; int pipe; } ;
struct intel_fbc_reg_params {int gen9_wa_cfb_stride; int cfb_size; TYPE_3__ fb; TYPE_2__ crtc; int flags; int vma; } ;
struct intel_fbc {int threshold; struct intel_fbc_state_cache state_cache; } ;
struct TYPE_7__ {int primary; int dev; } ;
struct intel_crtc {TYPE_1__ base; int pipe; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;
struct TYPE_12__ {int i9xx_plane; } ;


 int DIV_ROUND_UP (int ,int) ;
 int IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int get_crtc_fence_y_offset (struct intel_fbc*) ;
 int intel_fbc_calculate_cfb_size (struct drm_i915_private*,struct intel_fbc_state_cache*) ;
 int memset (struct intel_fbc_reg_params*,int ,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 TYPE_6__* to_intel_plane (int ) ;

__attribute__((used)) static void intel_fbc_get_reg_params(struct intel_crtc *crtc,
         struct intel_fbc_reg_params *params)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct intel_fbc *fbc = &dev_priv->fbc;
 struct intel_fbc_state_cache *cache = &fbc->state_cache;




 memset(params, 0, sizeof(*params));

 params->vma = cache->vma;
 params->flags = cache->flags;

 params->crtc.pipe = crtc->pipe;
 params->crtc.i9xx_plane = to_intel_plane(crtc->base.primary)->i9xx_plane;
 params->crtc.fence_y_offset = get_crtc_fence_y_offset(fbc);

 params->fb.format = cache->fb.format;
 params->fb.stride = cache->fb.stride;

 params->cfb_size = intel_fbc_calculate_cfb_size(dev_priv, cache);

 if (IS_GEN(dev_priv, 9) && !IS_GEMINILAKE(dev_priv))
  params->gen9_wa_cfb_stride = DIV_ROUND_UP(cache->plane.src_w,
      32 * fbc->threshold) * 8;
}
