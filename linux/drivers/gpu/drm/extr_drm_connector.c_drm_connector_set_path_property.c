
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_connector {int base; int path_blob_ptr; struct drm_device* dev; } ;


 int drm_property_replace_global_blob (struct drm_device*,int *,scalar_t__,char const*,int *,int ) ;
 scalar_t__ strlen (char const*) ;

int drm_connector_set_path_property(struct drm_connector *connector,
        const char *path)
{
 struct drm_device *dev = connector->dev;
 int ret;

 ret = drm_property_replace_global_blob(dev,
                                        &connector->path_blob_ptr,
                                        strlen(path) + 1,
                                        path,
                                        &connector->base,
                                        dev->mode_config.path_property);
 return ret;
}
