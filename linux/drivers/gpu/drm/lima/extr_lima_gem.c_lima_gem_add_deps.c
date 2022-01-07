
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lima_submit {TYPE_1__* task; int * in_sync; } ;
struct drm_file {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {int deps; } ;


 int ARRAY_SIZE (int *) ;
 int dma_fence_put (struct dma_fence*) ;
 int drm_gem_fence_array_add (int *,struct dma_fence*) ;
 int drm_syncobj_find_fence (struct drm_file*,int ,int ,int ,struct dma_fence**) ;

__attribute__((used)) static int lima_gem_add_deps(struct drm_file *file, struct lima_submit *submit)
{
 int i, err;

 for (i = 0; i < ARRAY_SIZE(submit->in_sync); i++) {
  struct dma_fence *fence = ((void*)0);

  if (!submit->in_sync[i])
   continue;

  err = drm_syncobj_find_fence(file, submit->in_sync[i],
          0, 0, &fence);
  if (err)
   return err;

  err = drm_gem_fence_array_add(&submit->task->deps, fence);
  if (err) {
   dma_fence_put(fence);
   return err;
  }
 }

 return 0;
}
