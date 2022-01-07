
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fdi_rx_polarity_inverted; int display_clock_mode; int lvds_ssc_freq; int lvds_use_ssc; int int_crt_support; int int_tv_support; int orientation; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct bdb_header {int version; } ;
struct bdb_general_features {scalar_t__ rotate_180; int fdi_rx_polarity_inverted; int display_clock_mode; int ssc_freq; int enable_ssc; int int_crt_support; int int_tv_support; } ;


 int BDB_GENERAL_FEATURES ;
 int DRM_DEBUG_KMS (char*,int ,int ,int ,int ,int ,int ) ;
 int DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP ;
 int DRM_MODE_PANEL_ORIENTATION_NORMAL ;
 int DRM_MODE_PANEL_ORIENTATION_UNKNOWN ;
 scalar_t__ HAS_DDI (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 struct bdb_general_features* find_section (struct bdb_header const*,int ) ;
 int intel_bios_ssc_frequency (struct drm_i915_private*,int ) ;

__attribute__((used)) static void
parse_general_features(struct drm_i915_private *dev_priv,
         const struct bdb_header *bdb)
{
 const struct bdb_general_features *general;

 general = find_section(bdb, BDB_GENERAL_FEATURES);
 if (!general)
  return;

 dev_priv->vbt.int_tv_support = general->int_tv_support;

 if (bdb->version >= 155 &&
     (HAS_DDI(dev_priv) || IS_VALLEYVIEW(dev_priv)))
  dev_priv->vbt.int_crt_support = general->int_crt_support;
 dev_priv->vbt.lvds_use_ssc = general->enable_ssc;
 dev_priv->vbt.lvds_ssc_freq =
  intel_bios_ssc_frequency(dev_priv, general->ssc_freq);
 dev_priv->vbt.display_clock_mode = general->display_clock_mode;
 dev_priv->vbt.fdi_rx_polarity_inverted = general->fdi_rx_polarity_inverted;
 if (bdb->version >= 181) {
  dev_priv->vbt.orientation = general->rotate_180 ?
   DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP :
   DRM_MODE_PANEL_ORIENTATION_NORMAL;
 } else {
  dev_priv->vbt.orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
 }
 DRM_DEBUG_KMS("BDB_GENERAL_FEATURES int_tv_support %d int_crt_support %d lvds_use_ssc %d lvds_ssc_freq %d display_clock_mode %d fdi_rx_polarity_inverted %d\n",
        dev_priv->vbt.int_tv_support,
        dev_priv->vbt.int_crt_support,
        dev_priv->vbt.lvds_use_ssc,
        dev_priv->vbt.lvds_ssc_freq,
        dev_priv->vbt.display_clock_mode,
        dev_priv->vbt.fdi_rx_polarity_inverted);
}
