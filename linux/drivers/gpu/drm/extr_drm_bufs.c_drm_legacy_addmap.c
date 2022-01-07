
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_map_list {struct drm_local_map* map; } ;
struct drm_local_map {int dummy; } ;
struct drm_device {int dummy; } ;
typedef int resource_size_t ;
typedef enum drm_map_type { ____Placeholder_drm_map_type } drm_map_type ;
typedef enum drm_map_flags { ____Placeholder_drm_map_flags } drm_map_flags ;


 int drm_addmap_core (struct drm_device*,int ,unsigned int,int,int,struct drm_map_list**) ;

int drm_legacy_addmap(struct drm_device *dev, resource_size_t offset,
        unsigned int size, enum drm_map_type type,
        enum drm_map_flags flags, struct drm_local_map **map_ptr)
{
 struct drm_map_list *list;
 int rc;

 rc = drm_addmap_core(dev, offset, size, type, flags, &list);
 if (!rc)
  *map_ptr = list->map;
 return rc;
}
