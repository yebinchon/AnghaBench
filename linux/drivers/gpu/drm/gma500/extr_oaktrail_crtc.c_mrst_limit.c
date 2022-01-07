
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_limit_t {int dummy; } ;
struct drm_psb_private {int core_freq; } ;
struct drm_device {int dev; struct drm_psb_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int INTEL_OUTPUT_LVDS ;
 int INTEL_OUTPUT_MIPI ;
 int INTEL_OUTPUT_SDVO ;
 size_t MRST_LIMIT_LVDS_100 ;
 size_t MRST_LIMIT_LVDS_100L ;
 size_t MRST_LIMIT_LVDS_83 ;
 size_t MRST_LIMIT_SDVO ;
 int dev_err (int ,char*) ;
 scalar_t__ gma_pipe_has_type (struct drm_crtc*,int ) ;
 struct gma_limit_t* mrst_limits ;

__attribute__((used)) static const struct gma_limit_t *mrst_limit(struct drm_crtc *crtc,
         int refclk)
{
 const struct gma_limit_t *limit = ((void*)0);
 struct drm_device *dev = crtc->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;

 if (gma_pipe_has_type(crtc, INTEL_OUTPUT_LVDS)
     || gma_pipe_has_type(crtc, INTEL_OUTPUT_MIPI)) {
  switch (dev_priv->core_freq) {
  case 100:
   limit = &mrst_limits[MRST_LIMIT_LVDS_100L];
   break;
  case 166:
   limit = &mrst_limits[MRST_LIMIT_LVDS_83];
   break;
  case 200:
   limit = &mrst_limits[MRST_LIMIT_LVDS_100];
   break;
  }
 } else if (gma_pipe_has_type(crtc, INTEL_OUTPUT_SDVO)) {
  limit = &mrst_limits[MRST_LIMIT_SDVO];
 } else {
  limit = ((void*)0);
  dev_err(dev->dev, "mrst_limit Wrong display type.\n");
 }

 return limit;
}
