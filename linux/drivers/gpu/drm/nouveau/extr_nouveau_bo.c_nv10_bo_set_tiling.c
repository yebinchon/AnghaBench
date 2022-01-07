
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int regions; TYPE_2__* region; } ;
struct nvkm_fb {TYPE_3__ tile; } ;
struct nouveau_drm_tile {int dummy; } ;
struct TYPE_4__ {int device; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct drm_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ pitch; } ;


 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 struct nouveau_drm_tile* nv10_bo_get_tile_region (struct drm_device*,int) ;
 int nv10_bo_put_tile_region (struct drm_device*,struct nouveau_drm_tile*,int *) ;
 int nv10_bo_update_tile_region (struct drm_device*,struct nouveau_drm_tile*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 struct nvkm_fb* nvxx_fb (int *) ;

__attribute__((used)) static struct nouveau_drm_tile *
nv10_bo_set_tiling(struct drm_device *dev, u32 addr,
     u32 size, u32 pitch, u32 zeta)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nvkm_fb *fb = nvxx_fb(&drm->client.device);
 struct nouveau_drm_tile *tile, *found = ((void*)0);
 int i;

 for (i = 0; i < fb->tile.regions; i++) {
  tile = nv10_bo_get_tile_region(dev, i);

  if (pitch && !found) {
   found = tile;
   continue;

  } else if (tile && fb->tile.region[i].pitch) {

   nv10_bo_update_tile_region(dev, tile, 0, 0, 0, 0);
  }

  nv10_bo_put_tile_region(dev, tile, ((void*)0));
 }

 if (found)
  nv10_bo_update_tile_region(dev, found, addr, size, pitch, zeta);
 return found;
}
