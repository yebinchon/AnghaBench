
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_limit_t {int dummy; } ;
struct drm_crtc {int dummy; } ;


 size_t INTEL_LIMIT_I9XX_LVDS ;
 size_t INTEL_LIMIT_I9XX_SDVO_DAC ;
 int INTEL_OUTPUT_LVDS ;
 scalar_t__ gma_pipe_has_type (struct drm_crtc*,int ) ;
 struct gma_limit_t* psb_intel_limits ;

__attribute__((used)) static const struct gma_limit_t *psb_intel_limit(struct drm_crtc *crtc,
       int refclk)
{
 const struct gma_limit_t *limit;

 if (gma_pipe_has_type(crtc, INTEL_OUTPUT_LVDS))
  limit = &psb_intel_limits[INTEL_LIMIT_I9XX_LVDS];
 else
  limit = &psb_intel_limits[INTEL_LIMIT_I9XX_SDVO_DAC];
 return limit;
}
