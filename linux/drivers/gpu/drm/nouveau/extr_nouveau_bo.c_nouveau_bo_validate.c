
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_operation_ctx {int member_0; int member_1; } ;
struct nouveau_bo {int placement; int bo; } ;


 int nouveau_bo_sync_for_device (struct nouveau_bo*) ;
 int ttm_bo_validate (int *,int *,struct ttm_operation_ctx*) ;

int
nouveau_bo_validate(struct nouveau_bo *nvbo, bool interruptible,
      bool no_wait_gpu)
{
 struct ttm_operation_ctx ctx = { interruptible, no_wait_gpu };
 int ret;

 ret = ttm_bo_validate(&nvbo->bo, &nvbo->placement, &ctx);
 if (ret)
  return ret;

 nouveau_bo_sync_for_device(nvbo);

 return 0;
}
