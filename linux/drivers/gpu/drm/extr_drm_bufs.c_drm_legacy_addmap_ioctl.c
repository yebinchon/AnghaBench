
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_map_list {scalar_t__ user_token; } ;
struct drm_map {scalar_t__ type; int mtrr; void* handle; int flags; int size; int offset; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int DRIVER_KMS_LEGACY_CONTEXT ;
 int DRIVER_LEGACY ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ _DRM_AGP ;
 scalar_t__ _DRM_SHM ;
 scalar_t__ capable (int ) ;
 int drm_addmap_core (struct drm_device*,int ,int ,scalar_t__,int ,struct drm_map_list**) ;
 int drm_core_check_feature (struct drm_device*,int ) ;

int drm_legacy_addmap_ioctl(struct drm_device *dev, void *data,
       struct drm_file *file_priv)
{
 struct drm_map *map = data;
 struct drm_map_list *maplist;
 int err;

 if (!(capable(CAP_SYS_ADMIN) || map->type == _DRM_AGP || map->type == _DRM_SHM))
  return -EPERM;

 if (!drm_core_check_feature(dev, DRIVER_KMS_LEGACY_CONTEXT) &&
     !drm_core_check_feature(dev, DRIVER_LEGACY))
  return -EOPNOTSUPP;

 err = drm_addmap_core(dev, map->offset, map->size, map->type,
         map->flags, &maplist);

 if (err)
  return err;


 map->handle = (void *)(unsigned long)maplist->user_token;







 map->mtrr = -1;

 return 0;
}
