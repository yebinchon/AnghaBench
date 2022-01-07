
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tile_property; } ;
struct drm_device {TYPE_2__ mode_config; } ;
struct drm_connector {int tile_is_single_monitor; int num_h_tile; int num_v_tile; int tile_h_loc; int tile_v_loc; int tile_h_size; int tile_v_size; int base; int tile_blob_ptr; TYPE_1__* tile_group; int has_tile; struct drm_device* dev; } ;
struct TYPE_3__ {int id; } ;


 int drm_property_replace_global_blob (struct drm_device*,int *,scalar_t__,char*,int *,int ) ;
 int snprintf (char*,int,char*,int,int,int,int,int,int,int,int) ;
 scalar_t__ strlen (char*) ;

int drm_connector_set_tile_property(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 char tile[256];
 int ret;

 if (!connector->has_tile) {
  ret = drm_property_replace_global_blob(dev,
                                          &connector->tile_blob_ptr,
                                          0,
                                          ((void*)0),
                                          &connector->base,
                                          dev->mode_config.tile_property);
  return ret;
 }

 snprintf(tile, 256, "%d:%d:%d:%d:%d:%d:%d:%d",
   connector->tile_group->id, connector->tile_is_single_monitor,
   connector->num_h_tile, connector->num_v_tile,
   connector->tile_h_loc, connector->tile_v_loc,
   connector->tile_h_size, connector->tile_v_size);

 ret = drm_property_replace_global_blob(dev,
                                        &connector->tile_blob_ptr,
                                        strlen(tile) + 1,
                                        tile,
                                        &connector->base,
                                        dev->mode_config.tile_property);
 return ret;
}
