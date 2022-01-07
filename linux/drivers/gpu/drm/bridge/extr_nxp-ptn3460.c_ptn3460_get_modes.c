
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ptn3460_bridge {int bridge; struct edid* edid; int enabled; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 int DRM_ERROR (char*) ;
 int EDID_LENGTH ;
 int GFP_KERNEL ;
 int PTN3460_EDID_ADDR ;
 struct ptn3460_bridge* connector_to_ptn3460 (struct drm_connector*) ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int ptn3460_disable (int *) ;
 int ptn3460_pre_enable (int *) ;
 int ptn3460_read_bytes (struct ptn3460_bridge*,int ,int *,int ) ;

__attribute__((used)) static int ptn3460_get_modes(struct drm_connector *connector)
{
 struct ptn3460_bridge *ptn_bridge;
 u8 *edid;
 int ret, num_modes = 0;
 bool power_off;

 ptn_bridge = connector_to_ptn3460(connector);

 if (ptn_bridge->edid)
  return drm_add_edid_modes(connector, ptn_bridge->edid);

 power_off = !ptn_bridge->enabled;
 ptn3460_pre_enable(&ptn_bridge->bridge);

 edid = kmalloc(EDID_LENGTH, GFP_KERNEL);
 if (!edid) {
  DRM_ERROR("Failed to allocate EDID\n");
  return 0;
 }

 ret = ptn3460_read_bytes(ptn_bridge, PTN3460_EDID_ADDR, edid,
   EDID_LENGTH);
 if (ret) {
  kfree(edid);
  goto out;
 }

 ptn_bridge->edid = (struct edid *)edid;
 drm_connector_update_edid_property(connector, ptn_bridge->edid);

 num_modes = drm_add_edid_modes(connector, ptn_bridge->edid);

out:
 if (power_off)
  ptn3460_disable(&ptn_bridge->bridge);

 return num_modes;
}
