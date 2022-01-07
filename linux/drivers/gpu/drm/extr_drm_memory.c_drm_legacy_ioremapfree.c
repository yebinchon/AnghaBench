
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_local_map {scalar_t__ type; int handle; int size; } ;
struct drm_device {TYPE_1__* agp; } ;
struct TYPE_2__ {scalar_t__ cant_use_aperture; } ;


 scalar_t__ _DRM_AGP ;
 int iounmap (int ) ;
 int vunmap (int ) ;

void drm_legacy_ioremapfree(struct drm_local_map *map, struct drm_device *dev)
{
 if (!map->handle || !map->size)
  return;

 if (dev->agp && dev->agp->cant_use_aperture && map->type == _DRM_AGP)
  vunmap(map->handle);
 else
  iounmap(map->handle);
}
