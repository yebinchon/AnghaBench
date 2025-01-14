
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int present; } ;
struct TYPE_4__ {int lvds_dither; int int_tv_support; int int_crt_support; int int_lvds_support; int lvds_use_ssc; struct ddi_vbt_port_info* ddi_port_info; int lvds_ssc_freq; int * sdvo_lvds_vbt_mode; TYPE_1__ backlight; int crt_ddc_pin; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct ddi_vbt_port_info {int hdmi_level_shift; } ;
typedef enum port { ____Placeholder_port } port ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int GMBUS_PIN_VGADDC ;
 int HAS_PCH_SPLIT (struct drm_i915_private*) ;
 int HDMI_LEVEL_SHIFT_UNKNOWN ;
 int I915_MAX_PORTS ;
 int PORT_A ;
 int intel_bios_ssc_frequency (struct drm_i915_private*,int) ;

__attribute__((used)) static void
init_vbt_defaults(struct drm_i915_private *dev_priv)
{
 enum port port;

 dev_priv->vbt.crt_ddc_pin = GMBUS_PIN_VGADDC;


 dev_priv->vbt.backlight.present = 1;


 dev_priv->vbt.lvds_dither = 1;


 dev_priv->vbt.sdvo_lvds_vbt_mode = ((void*)0);


 dev_priv->vbt.int_tv_support = 1;
 dev_priv->vbt.int_crt_support = 1;


 dev_priv->vbt.int_lvds_support = 1;


 dev_priv->vbt.lvds_use_ssc = 1;




 dev_priv->vbt.lvds_ssc_freq = intel_bios_ssc_frequency(dev_priv,
   !HAS_PCH_SPLIT(dev_priv));
 DRM_DEBUG_KMS("Set default to SSC at %d kHz\n", dev_priv->vbt.lvds_ssc_freq);

 for (port = PORT_A; port < I915_MAX_PORTS; port++) {
  struct ddi_vbt_port_info *info =
   &dev_priv->vbt.ddi_port_info[port];

  info->hdmi_level_shift = HDMI_LEVEL_SHIFT_UNKNOWN;
 }
}
