
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrst_limit_t {int dummy; } ;
struct drm_psb_private {int core_freq; } ;
struct drm_device {int dev; struct drm_psb_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int INTEL_OUTPUT_HDMI ;
 int INTEL_OUTPUT_MIPI ;
 int INTEL_OUTPUT_MIPI2 ;
 scalar_t__ KSEL_BYPASS_19 ;
 scalar_t__ KSEL_BYPASS_25 ;
 scalar_t__ KSEL_BYPASS_83_100 ;
 scalar_t__ KSEL_CRYSTAL_19 ;
 size_t MDFLD_LIMT_DPLL_100 ;
 size_t MDFLD_LIMT_DPLL_19 ;
 size_t MDFLD_LIMT_DPLL_25 ;
 size_t MDFLD_LIMT_DPLL_83 ;
 size_t MDFLD_LIMT_DSIPLL_100 ;
 size_t MDFLD_LIMT_DSIPLL_19 ;
 size_t MDFLD_LIMT_DSIPLL_25 ;
 size_t MDFLD_LIMT_DSIPLL_83 ;
 int dev_dbg (int ,char*) ;
 scalar_t__ gma_pipe_has_type (struct drm_crtc*,int ) ;
 scalar_t__ ksel ;
 struct mrst_limit_t* mdfld_limits ;

__attribute__((used)) static const struct mrst_limit_t *mdfld_limit(struct drm_crtc *crtc)
{
 const struct mrst_limit_t *limit = ((void*)0);
 struct drm_device *dev = crtc->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;

 if (gma_pipe_has_type(crtc, INTEL_OUTPUT_MIPI)
     || gma_pipe_has_type(crtc, INTEL_OUTPUT_MIPI2)) {
  if ((ksel == KSEL_CRYSTAL_19) || (ksel == KSEL_BYPASS_19))
   limit = &mdfld_limits[MDFLD_LIMT_DSIPLL_19];
  else if (ksel == KSEL_BYPASS_25)
   limit = &mdfld_limits[MDFLD_LIMT_DSIPLL_25];
  else if ((ksel == KSEL_BYPASS_83_100) &&
    (dev_priv->core_freq == 166))
   limit = &mdfld_limits[MDFLD_LIMT_DSIPLL_83];
  else if ((ksel == KSEL_BYPASS_83_100) &&
    (dev_priv->core_freq == 100 ||
    dev_priv->core_freq == 200))
   limit = &mdfld_limits[MDFLD_LIMT_DSIPLL_100];
 } else if (gma_pipe_has_type(crtc, INTEL_OUTPUT_HDMI)) {
  if ((ksel == KSEL_CRYSTAL_19) || (ksel == KSEL_BYPASS_19))
   limit = &mdfld_limits[MDFLD_LIMT_DPLL_19];
  else if (ksel == KSEL_BYPASS_25)
   limit = &mdfld_limits[MDFLD_LIMT_DPLL_25];
  else if ((ksel == KSEL_BYPASS_83_100) &&
    (dev_priv->core_freq == 166))
   limit = &mdfld_limits[MDFLD_LIMT_DPLL_83];
  else if ((ksel == KSEL_BYPASS_83_100) &&
     (dev_priv->core_freq == 100 ||
     dev_priv->core_freq == 200))
   limit = &mdfld_limits[MDFLD_LIMT_DPLL_100];
 } else {
  limit = ((void*)0);
  dev_dbg(dev->dev, "mdfld_limit Wrong display type.\n");
 }

 return limit;
}
