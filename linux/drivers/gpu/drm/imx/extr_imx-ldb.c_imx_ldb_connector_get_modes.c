
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_ldb_channel {int mode; scalar_t__ mode_valid; scalar_t__ edid; scalar_t__ ddc; int panel; } ;
struct drm_display_mode {int type; } ;
struct drm_connector {int dev; } ;


 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int EINVAL ;
 struct imx_ldb_channel* con_to_imx_ldb_ch (struct drm_connector*) ;
 int drm_add_edid_modes (struct drm_connector*,scalar_t__) ;
 int drm_connector_update_edid_property (struct drm_connector*,scalar_t__) ;
 scalar_t__ drm_get_edid (struct drm_connector*,scalar_t__) ;
 int drm_mode_copy (struct drm_display_mode*,int *) ;
 struct drm_display_mode* drm_mode_create (int ) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int drm_panel_get_modes (int ) ;

__attribute__((used)) static int imx_ldb_connector_get_modes(struct drm_connector *connector)
{
 struct imx_ldb_channel *imx_ldb_ch = con_to_imx_ldb_ch(connector);
 int num_modes;

 num_modes = drm_panel_get_modes(imx_ldb_ch->panel);
 if (num_modes > 0)
  return num_modes;

 if (!imx_ldb_ch->edid && imx_ldb_ch->ddc)
  imx_ldb_ch->edid = drm_get_edid(connector, imx_ldb_ch->ddc);

 if (imx_ldb_ch->edid) {
  drm_connector_update_edid_property(connector,
       imx_ldb_ch->edid);
  num_modes = drm_add_edid_modes(connector, imx_ldb_ch->edid);
 }

 if (imx_ldb_ch->mode_valid) {
  struct drm_display_mode *mode;

  mode = drm_mode_create(connector->dev);
  if (!mode)
   return -EINVAL;
  drm_mode_copy(mode, &imx_ldb_ch->mode);
  mode->type |= DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
  drm_mode_probed_add(connector, mode);
  num_modes++;
 }

 return num_modes;
}
