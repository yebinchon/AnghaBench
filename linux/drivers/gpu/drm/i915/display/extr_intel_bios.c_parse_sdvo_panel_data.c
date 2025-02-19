
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_display_mode* sdvo_lvds_vbt_mode; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct drm_display_mode {int dummy; } ;
struct bdb_sdvo_panel_dtds {int * dtds; } ;
struct bdb_sdvo_lvds_options {int panel_type; } ;
struct bdb_header {int dummy; } ;
struct TYPE_4__ {int vbt_sdvo_panel_type; } ;


 int BDB_SDVO_LVDS_OPTIONS ;
 int BDB_SDVO_PANEL_DTDS ;
 int DRM_DEBUG_KMS (char*) ;
 int GFP_KERNEL ;
 int drm_mode_debug_printmodeline (struct drm_display_mode*) ;
 int fill_detail_timing_data (struct drm_display_mode*,int *) ;
 void* find_section (struct bdb_header const*,int ) ;
 TYPE_2__ i915_modparams ;
 struct drm_display_mode* kzalloc (int,int ) ;

__attribute__((used)) static void
parse_sdvo_panel_data(struct drm_i915_private *dev_priv,
        const struct bdb_header *bdb)
{
 const struct bdb_sdvo_panel_dtds *dtds;
 struct drm_display_mode *panel_fixed_mode;
 int index;

 index = i915_modparams.vbt_sdvo_panel_type;
 if (index == -2) {
  DRM_DEBUG_KMS("Ignore SDVO panel mode from BIOS VBT tables.\n");
  return;
 }

 if (index == -1) {
  const struct bdb_sdvo_lvds_options *sdvo_lvds_options;

  sdvo_lvds_options = find_section(bdb, BDB_SDVO_LVDS_OPTIONS);
  if (!sdvo_lvds_options)
   return;

  index = sdvo_lvds_options->panel_type;
 }

 dtds = find_section(bdb, BDB_SDVO_PANEL_DTDS);
 if (!dtds)
  return;

 panel_fixed_mode = kzalloc(sizeof(*panel_fixed_mode), GFP_KERNEL);
 if (!panel_fixed_mode)
  return;

 fill_detail_timing_data(panel_fixed_mode, &dtds->dtds[index]);

 dev_priv->vbt.sdvo_lvds_vbt_mode = panel_fixed_mode;

 DRM_DEBUG_KMS("Found SDVO panel mode in BIOS VBT tables:\n");
 drm_mode_debug_printmodeline(panel_fixed_mode);
}
