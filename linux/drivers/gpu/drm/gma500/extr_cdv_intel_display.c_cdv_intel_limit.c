
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_limit_t {int dummy; } ;
struct drm_crtc {int dummy; } ;


 size_t CDV_LIMIT_DAC_HDMI_27 ;
 size_t CDV_LIMIT_DAC_HDMI_96 ;
 size_t CDV_LIMIT_DP_100 ;
 size_t CDV_LIMIT_DP_27 ;
 size_t CDV_LIMIT_SINGLE_LVDS_100 ;
 size_t CDV_LIMIT_SINGLE_LVDS_96 ;
 int INTEL_OUTPUT_DISPLAYPORT ;
 int INTEL_OUTPUT_EDP ;
 int INTEL_OUTPUT_LVDS ;
 struct gma_limit_t* cdv_intel_limits ;
 scalar_t__ gma_pipe_has_type (struct drm_crtc*,int ) ;

__attribute__((used)) static const struct gma_limit_t *cdv_intel_limit(struct drm_crtc *crtc,
       int refclk)
{
 const struct gma_limit_t *limit;
 if (gma_pipe_has_type(crtc, INTEL_OUTPUT_LVDS)) {




  if (refclk == 96000)
   limit = &cdv_intel_limits[CDV_LIMIT_SINGLE_LVDS_96];
  else
   limit = &cdv_intel_limits[CDV_LIMIT_SINGLE_LVDS_100];
 } else if (gma_pipe_has_type(crtc, INTEL_OUTPUT_DISPLAYPORT) ||
   gma_pipe_has_type(crtc, INTEL_OUTPUT_EDP)) {
  if (refclk == 27000)
   limit = &cdv_intel_limits[CDV_LIMIT_DP_27];
  else
   limit = &cdv_intel_limits[CDV_LIMIT_DP_100];
 } else {
  if (refclk == 27000)
   limit = &cdv_intel_limits[CDV_LIMIT_DAC_HDMI_27];
  else
   limit = &cdv_intel_limits[CDV_LIMIT_DAC_HDMI_96];
 }
 return limit;
}
