
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_tile_group {int refcount; } ;
struct drm_device {int dummy; } ;


 int drm_tile_group_free ;
 int kref_put (int *,int ) ;

void drm_mode_put_tile_group(struct drm_device *dev,
        struct drm_tile_group *tg)
{
 kref_put(&tg->refcount, drm_tile_group_free);
}
