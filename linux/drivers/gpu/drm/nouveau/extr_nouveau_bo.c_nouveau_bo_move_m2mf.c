
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ttm_mem_reg {int dummy; } ;
struct ttm_buffer_object {int mem; int bdev; } ;
struct nouveau_fence {int base; } ;
struct TYPE_10__ {int (* move ) (struct nouveau_channel*,struct ttm_buffer_object*,int *,struct ttm_mem_reg*) ;struct nouveau_channel* chan; } ;
struct TYPE_7__ {scalar_t__ family; } ;
struct TYPE_8__ {TYPE_2__ info; } ;
struct TYPE_9__ {TYPE_3__ device; } ;
struct nouveau_drm {TYPE_5__ ttm; TYPE_4__ client; } ;
struct nouveau_cli {int mutex; } ;
struct TYPE_6__ {scalar_t__ client; } ;
struct nouveau_channel {TYPE_1__ user; } ;


 scalar_t__ NV_DEVICE_INFO_V0_TESLA ;
 int SINGLE_DEPTH_NESTING ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 int nouveau_bo (struct ttm_buffer_object*) ;
 int nouveau_bo_move_prep (struct nouveau_drm*,struct ttm_buffer_object*,struct ttm_mem_reg*) ;
 int nouveau_fence_new (struct nouveau_channel*,int,struct nouveau_fence**) ;
 int nouveau_fence_sync (int ,struct nouveau_channel*,int,int) ;
 int nouveau_fence_unref (struct nouveau_fence**) ;
 int stub1 (struct nouveau_channel*,struct ttm_buffer_object*,int *,struct ttm_mem_reg*) ;
 int ttm_bo_move_accel_cleanup (struct ttm_buffer_object*,int *,int,struct ttm_mem_reg*) ;

__attribute__((used)) static int
nouveau_bo_move_m2mf(struct ttm_buffer_object *bo, int evict, bool intr,
       bool no_wait_gpu, struct ttm_mem_reg *new_reg)
{
 struct nouveau_drm *drm = nouveau_bdev(bo->bdev);
 struct nouveau_channel *chan = drm->ttm.chan;
 struct nouveau_cli *cli = (void *)chan->user.client;
 struct nouveau_fence *fence;
 int ret;





 if (drm->client.device.info.family >= NV_DEVICE_INFO_V0_TESLA) {
  ret = nouveau_bo_move_prep(drm, bo, new_reg);
  if (ret)
   return ret;
 }

 mutex_lock_nested(&cli->mutex, SINGLE_DEPTH_NESTING);
 ret = nouveau_fence_sync(nouveau_bo(bo), chan, 1, intr);
 if (ret == 0) {
  ret = drm->ttm.move(chan, bo, &bo->mem, new_reg);
  if (ret == 0) {
   ret = nouveau_fence_new(chan, 0, &fence);
   if (ret == 0) {
    ret = ttm_bo_move_accel_cleanup(bo,
        &fence->base,
        evict,
        new_reg);
    nouveau_fence_unref(&fence);
   }
  }
 }
 mutex_unlock(&cli->mutex);
 return ret;
}
