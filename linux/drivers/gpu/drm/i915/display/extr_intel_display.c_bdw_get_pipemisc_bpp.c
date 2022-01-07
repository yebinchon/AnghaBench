
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 int I915_READ (int ) ;
 int MISSING_CASE (int) ;
 int PIPEMISC (int ) ;




 int PIPEMISC_DITHER_BPC_MASK ;
 struct drm_i915_private* to_i915 (int ) ;

int bdw_get_pipemisc_bpp(struct intel_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 u32 tmp;

 tmp = I915_READ(PIPEMISC(crtc->pipe));

 switch (tmp & PIPEMISC_DITHER_BPC_MASK) {
 case 129:
  return 18;
 case 128:
  return 24;
 case 131:
  return 30;
 case 130:
  return 36;
 default:
  MISSING_CASE(tmp);
  return 0;
 }
}
