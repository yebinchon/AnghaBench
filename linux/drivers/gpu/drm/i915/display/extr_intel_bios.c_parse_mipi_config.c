
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mipi_pps_data {int rotation; } ;
struct mipi_config {int rotation; } ;
struct TYPE_3__ {int panel_id; int orientation; void* config; void* pps; } ;
struct TYPE_4__ {int panel_type; TYPE_1__ dsi; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct bdb_mipi_config {struct mipi_pps_data* pps; struct mipi_pps_data* config; } ;
struct bdb_header {int version; } ;
typedef enum port { ____Placeholder_port } port ;


 int BDB_MIPI_CONFIG ;
 int DRM_DEBUG_DRIVER (char*,int) ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP ;
 int DRM_MODE_PANEL_ORIENTATION_LEFT_UP ;
 int DRM_MODE_PANEL_ORIENTATION_RIGHT_UP ;
 int DRM_MODE_PANEL_ORIENTATION_UNKNOWN ;




 int GFP_KERNEL ;
 int MIPI_DSI_GENERIC_PANEL_ID ;
 int MIPI_DSI_UNDEFINED_PANEL_ID ;
 struct bdb_mipi_config* find_section (struct bdb_header const*,int ) ;
 int intel_bios_is_dsi_present (struct drm_i915_private*,int*) ;
 int kfree (void*) ;
 void* kmemdup (struct mipi_pps_data const*,int,int ) ;
 int parse_dsi_backlight_ports (struct drm_i915_private*,int ,int) ;

__attribute__((used)) static void
parse_mipi_config(struct drm_i915_private *dev_priv,
    const struct bdb_header *bdb)
{
 const struct bdb_mipi_config *start;
 const struct mipi_config *config;
 const struct mipi_pps_data *pps;
 int panel_type = dev_priv->vbt.panel_type;
 enum port port;


 if (!intel_bios_is_dsi_present(dev_priv, &port))
  return;


 dev_priv->vbt.dsi.panel_id = MIPI_DSI_UNDEFINED_PANEL_ID;
 start = find_section(bdb, BDB_MIPI_CONFIG);
 if (!start) {
  DRM_DEBUG_KMS("No MIPI config BDB found");
  return;
 }

 DRM_DEBUG_DRIVER("Found MIPI Config block, panel index = %d\n",
        panel_type);





 config = &start->config[panel_type];
 pps = &start->pps[panel_type];


 dev_priv->vbt.dsi.config = kmemdup(config, sizeof(struct mipi_config), GFP_KERNEL);
 if (!dev_priv->vbt.dsi.config)
  return;

 dev_priv->vbt.dsi.pps = kmemdup(pps, sizeof(struct mipi_pps_data), GFP_KERNEL);
 if (!dev_priv->vbt.dsi.pps) {
  kfree(dev_priv->vbt.dsi.config);
  return;
 }

 parse_dsi_backlight_ports(dev_priv, bdb->version, port);


 switch (config->rotation) {
 case 131:




  dev_priv->vbt.dsi.orientation =
   DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
  break;
 case 128:
  dev_priv->vbt.dsi.orientation =
   DRM_MODE_PANEL_ORIENTATION_RIGHT_UP;
  break;
 case 130:
  dev_priv->vbt.dsi.orientation =
   DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP;
  break;
 case 129:
  dev_priv->vbt.dsi.orientation =
   DRM_MODE_PANEL_ORIENTATION_LEFT_UP;
  break;
 }


 dev_priv->vbt.dsi.panel_id = MIPI_DSI_GENERIC_PANEL_ID;
}
