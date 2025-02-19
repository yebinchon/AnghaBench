
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lvds_dvo_timing {int dummy; } ;
struct drm_psb_private {int lvds_vbt; int panel_type; TYPE_1__* dev; struct drm_display_mode* lfp_lvds_vbt_mode; int lvds_dither; } ;
struct drm_display_mode {scalar_t__ htotal; scalar_t__ vtotal; } ;
struct bdb_lvds_options {int panel_type; int pixel_dither; } ;
struct bdb_lvds_lfp_data_entry {struct lvds_dvo_timing dvo_timing; } ;
struct bdb_lvds_lfp_data {struct bdb_lvds_lfp_data_entry* data; } ;
struct bdb_header {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int BDB_LVDS_LFP_DATA ;
 int BDB_LVDS_OPTIONS ;
 int GFP_KERNEL ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int drm_mode_debug_printmodeline (struct drm_display_mode*) ;
 int fill_detail_timing_data (struct drm_display_mode*,struct lvds_dvo_timing*) ;
 void* find_section (struct bdb_header*,int ) ;
 int kfree (struct drm_display_mode*) ;
 struct drm_display_mode* kzalloc (int,int ) ;

__attribute__((used)) static void parse_lfp_panel_data(struct drm_psb_private *dev_priv,
       struct bdb_header *bdb)
{
 struct bdb_lvds_options *lvds_options;
 struct bdb_lvds_lfp_data *lvds_lfp_data;
 struct bdb_lvds_lfp_data_entry *entry;
 struct lvds_dvo_timing *dvo_timing;
 struct drm_display_mode *panel_fixed_mode;


 dev_priv->lvds_dither = 0;
 dev_priv->lvds_vbt = 0;

 lvds_options = find_section(bdb, BDB_LVDS_OPTIONS);
 if (!lvds_options)
  return;

 dev_priv->lvds_dither = lvds_options->pixel_dither;
 dev_priv->panel_type = lvds_options->panel_type;

 if (lvds_options->panel_type == 0xff)
  return;

 lvds_lfp_data = find_section(bdb, BDB_LVDS_LFP_DATA);
 if (!lvds_lfp_data)
  return;


 entry = &lvds_lfp_data->data[lvds_options->panel_type];
 dvo_timing = &entry->dvo_timing;

 panel_fixed_mode = kzalloc(sizeof(*panel_fixed_mode),
          GFP_KERNEL);
 if (panel_fixed_mode == ((void*)0)) {
  dev_err(dev_priv->dev->dev, "out of memory for fixed panel mode\n");
  return;
 }

 dev_priv->lvds_vbt = 1;
 fill_detail_timing_data(panel_fixed_mode, dvo_timing);

 if (panel_fixed_mode->htotal > 0 && panel_fixed_mode->vtotal > 0) {
  dev_priv->lfp_lvds_vbt_mode = panel_fixed_mode;
  drm_mode_debug_printmodeline(panel_fixed_mode);
 } else {
  dev_dbg(dev_priv->dev->dev, "ignoring invalid LVDS VBT\n");
  dev_priv->lvds_vbt = 0;
  kfree(panel_fixed_mode);
 }
 return;
}
