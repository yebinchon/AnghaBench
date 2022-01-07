
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edid {int dummy; } ;
struct drm_connector {int has_tile; int * tile_group; int dev; } ;


 int EDID_LENGTH ;
 void* drm_find_displayid_extension (struct edid*) ;
 int drm_mode_put_tile_group (int ,int *) ;
 int drm_parse_display_id (struct drm_connector*,void*,int ,int) ;

__attribute__((used)) static void drm_get_displayid(struct drm_connector *connector,
         struct edid *edid)
{
 void *displayid = ((void*)0);
 int ret;
 connector->has_tile = 0;
 displayid = drm_find_displayid_extension(edid);
 if (!displayid) {

  goto out_drop_ref;
 }

 ret = drm_parse_display_id(connector, displayid, EDID_LENGTH, 1);
 if (ret < 0)
  goto out_drop_ref;
 if (!connector->has_tile)
  goto out_drop_ref;
 return;
out_drop_ref:
 if (connector->tile_group) {
  drm_mode_put_tile_group(connector->dev, connector->tile_group);
  connector->tile_group = ((void*)0);
 }
 return;
}
