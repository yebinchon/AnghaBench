
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct TYPE_6__ {TYPE_1__ base; } ;
struct intel_dsi {TYPE_2__ base; } ;
struct TYPE_7__ {int seq_version; } ;
struct TYPE_8__ {TYPE_3__ dsi; } ;
struct drm_i915_private {TYPE_4__ vbt; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int bxt_exec_gpio (struct drm_i915_private*,int,int,int) ;
 int chv_exec_gpio (struct drm_i915_private*,int,int,int) ;
 int icl_exec_gpio (struct drm_i915_private*,int,int,int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 int vlv_exec_gpio (struct drm_i915_private*,int,int,int) ;

__attribute__((used)) static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
{
 struct drm_device *dev = intel_dsi->base.base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 u8 gpio_source, gpio_index = 0, gpio_number;
 bool value;

 DRM_DEBUG_KMS("\n");

 if (dev_priv->vbt.dsi.seq_version >= 3)
  gpio_index = *data++;

 gpio_number = *data++;


 if (dev_priv->vbt.dsi.seq_version == 2)
  gpio_source = (*data >> 1) & 3;
 else
  gpio_source = 0;


 value = *data++ & 1;

 if (INTEL_GEN(dev_priv) >= 11)
  icl_exec_gpio(dev_priv, gpio_source, gpio_index, value);
 else if (IS_VALLEYVIEW(dev_priv))
  vlv_exec_gpio(dev_priv, gpio_source, gpio_number, value);
 else if (IS_CHERRYVIEW(dev_priv))
  chv_exec_gpio(dev_priv, gpio_source, gpio_number, value);
 else
  bxt_exec_gpio(dev_priv, gpio_source, gpio_index, value);

 return data;
}
