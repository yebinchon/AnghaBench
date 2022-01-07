
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ttm_operation_ctx {int no_wait_gpu; int interruptible; } ;
struct ttm_mem_reg {scalar_t__ mem_type; int * mm_node; } ;
struct ttm_buffer_object {struct ttm_mem_reg mem; int ttm; int bdev; } ;
struct nouveau_drm_tile {int dummy; } ;
struct TYPE_6__ {scalar_t__ family; } ;
struct TYPE_7__ {TYPE_2__ info; } ;
struct TYPE_8__ {TYPE_3__ device; } ;
struct TYPE_5__ {scalar_t__ move; } ;
struct nouveau_drm {TYPE_4__ client; TYPE_1__ ttm; } ;
struct nouveau_bo {struct nouveau_drm_tile* tile; scalar_t__ pin_refcnt; } ;


 int BUG_ON (int ) ;
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ;
 int NV_WARN (struct nouveau_drm*,char*,struct nouveau_bo*) ;
 scalar_t__ TTM_PL_SYSTEM ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 struct nouveau_bo* nouveau_bo (struct ttm_buffer_object*) ;
 int nouveau_bo_move_flipd (struct ttm_buffer_object*,int,int ,int ,struct ttm_mem_reg*) ;
 int nouveau_bo_move_flips (struct ttm_buffer_object*,int,int ,int ,struct ttm_mem_reg*) ;
 int nouveau_bo_move_m2mf (struct ttm_buffer_object*,int,int ,int ,struct ttm_mem_reg*) ;
 int nouveau_bo_vm_bind (struct ttm_buffer_object*,struct ttm_mem_reg*,struct nouveau_drm_tile**) ;
 int nouveau_bo_vm_cleanup (struct ttm_buffer_object*,struct nouveau_drm_tile*,struct nouveau_drm_tile**) ;
 int ttm_bo_move_memcpy (struct ttm_buffer_object*,struct ttm_operation_ctx*,struct ttm_mem_reg*) ;
 int ttm_bo_wait (struct ttm_buffer_object*,int ,int ) ;

__attribute__((used)) static int
nouveau_bo_move(struct ttm_buffer_object *bo, bool evict,
  struct ttm_operation_ctx *ctx,
  struct ttm_mem_reg *new_reg)
{
 struct nouveau_drm *drm = nouveau_bdev(bo->bdev);
 struct nouveau_bo *nvbo = nouveau_bo(bo);
 struct ttm_mem_reg *old_reg = &bo->mem;
 struct nouveau_drm_tile *new_tile = ((void*)0);
 int ret = 0;

 ret = ttm_bo_wait(bo, ctx->interruptible, ctx->no_wait_gpu);
 if (ret)
  return ret;

 if (nvbo->pin_refcnt)
  NV_WARN(drm, "Moving pinned object %p!\n", nvbo);

 if (drm->client.device.info.family < NV_DEVICE_INFO_V0_TESLA) {
  ret = nouveau_bo_vm_bind(bo, new_reg, &new_tile);
  if (ret)
   return ret;
 }


 if (old_reg->mem_type == TTM_PL_SYSTEM && !bo->ttm) {
  BUG_ON(bo->mem.mm_node != ((void*)0));
  bo->mem = *new_reg;
  new_reg->mm_node = ((void*)0);
  goto out;
 }


 if (drm->ttm.move) {
  if (new_reg->mem_type == TTM_PL_SYSTEM)
   ret = nouveau_bo_move_flipd(bo, evict,
          ctx->interruptible,
          ctx->no_wait_gpu, new_reg);
  else if (old_reg->mem_type == TTM_PL_SYSTEM)
   ret = nouveau_bo_move_flips(bo, evict,
          ctx->interruptible,
          ctx->no_wait_gpu, new_reg);
  else
   ret = nouveau_bo_move_m2mf(bo, evict,
         ctx->interruptible,
         ctx->no_wait_gpu, new_reg);
  if (!ret)
   goto out;
 }


 ret = ttm_bo_wait(bo, ctx->interruptible, ctx->no_wait_gpu);
 if (ret == 0)
  ret = ttm_bo_move_memcpy(bo, ctx, new_reg);

out:
 if (drm->client.device.info.family < NV_DEVICE_INFO_V0_TESLA) {
  if (ret)
   nouveau_bo_vm_cleanup(bo, ((void*)0), &new_tile);
  else
   nouveau_bo_vm_cleanup(bo, new_tile, &nvbo->tile);
 }

 return ret;
}
