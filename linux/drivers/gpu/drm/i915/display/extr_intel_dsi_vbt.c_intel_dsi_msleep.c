
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dev; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
struct intel_dsi {TYPE_2__ base; } ;
struct TYPE_7__ {int seq_version; } ;
struct TYPE_8__ {TYPE_3__ dsi; } ;
struct drm_i915_private {TYPE_4__ vbt; } ;


 scalar_t__ is_vid_mode (struct intel_dsi*) ;
 int msleep (int) ;
 struct drm_i915_private* to_i915 (int ) ;

void intel_dsi_msleep(struct intel_dsi *intel_dsi, int msec)
{
 struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);


 if (is_vid_mode(intel_dsi) && dev_priv->vbt.dsi.seq_version >= 3)
  return;

 msleep(msec);
}
