
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lima_sched_task {int deps; } ;
struct TYPE_2__ {int resv; } ;
struct lima_bo {TYPE_1__ gem; } ;


 int dma_resv_reserve_shared (int ,int) ;
 int drm_gem_fence_array_add_implicit (int *,TYPE_1__*,int) ;

__attribute__((used)) static int lima_gem_sync_bo(struct lima_sched_task *task, struct lima_bo *bo,
       bool write, bool explicit)
{
 int err = 0;

 if (!write) {
  err = dma_resv_reserve_shared(bo->gem.resv, 1);
  if (err)
   return err;
 }


 if (explicit)
  return 0;

 return drm_gem_fence_array_add_implicit(&task->deps, &bo->gem, write);
}
