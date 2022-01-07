
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct msm_gpu {TYPE_3__* aspace; int memptrs_bo; int ** rb; int active_list; int name; } ;
struct TYPE_8__ {TYPE_2__* mmu; } ;
struct TYPE_7__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {int (* detach ) (TYPE_2__*,int *,int ) ;} ;


 int ARRAY_SIZE (int **) ;
 int DBG (char*,int ) ;
 int IS_ERR_OR_NULL (TYPE_3__*) ;
 int WARN_ON (int) ;
 int list_empty (int *) ;
 int msm_gem_address_space_put (TYPE_3__*) ;
 int msm_gem_kernel_put (int ,TYPE_3__*,int) ;
 int msm_ringbuffer_destroy (int *) ;
 int stub1 (TYPE_2__*,int *,int ) ;

void msm_gpu_cleanup(struct msm_gpu *gpu)
{
 int i;

 DBG("%s", gpu->name);

 WARN_ON(!list_empty(&gpu->active_list));

 for (i = 0; i < ARRAY_SIZE(gpu->rb); i++) {
  msm_ringbuffer_destroy(gpu->rb[i]);
  gpu->rb[i] = ((void*)0);
 }

 msm_gem_kernel_put(gpu->memptrs_bo, gpu->aspace, 0);

 if (!IS_ERR_OR_NULL(gpu->aspace)) {
  gpu->aspace->mmu->funcs->detach(gpu->aspace->mmu,
   ((void*)0), 0);
  msm_gem_address_space_put(gpu->aspace);
 }
}
