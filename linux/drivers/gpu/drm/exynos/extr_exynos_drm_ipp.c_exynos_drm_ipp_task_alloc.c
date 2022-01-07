
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int rotation; } ;
struct TYPE_8__ {void* h; void* w; } ;
struct TYPE_9__ {TYPE_3__ rect; } ;
struct TYPE_6__ {void* h; void* w; } ;
struct TYPE_7__ {TYPE_1__ rect; } ;
struct exynos_drm_ipp_task {int dev; TYPE_5__ transform; TYPE_4__ dst; TYPE_2__ src; struct exynos_drm_ipp* ipp; } ;
struct exynos_drm_ipp {int dev; } ;


 int DRM_DEV_DEBUG_DRIVER (int ,char*,struct exynos_drm_ipp_task*) ;
 int DRM_MODE_ROTATE_0 ;
 int GFP_KERNEL ;
 void* UINT_MAX ;
 struct exynos_drm_ipp_task* kzalloc (int,int ) ;

__attribute__((used)) static inline struct exynos_drm_ipp_task *
   exynos_drm_ipp_task_alloc(struct exynos_drm_ipp *ipp)
{
 struct exynos_drm_ipp_task *task;

 task = kzalloc(sizeof(*task), GFP_KERNEL);
 if (!task)
  return ((void*)0);

 task->dev = ipp->dev;
 task->ipp = ipp;


 task->src.rect.w = task->dst.rect.w = UINT_MAX;
 task->src.rect.h = task->dst.rect.h = UINT_MAX;
 task->transform.rotation = DRM_MODE_ROTATE_0;

 DRM_DEV_DEBUG_DRIVER(task->dev, "Allocated task %pK\n", task);

 return task;
}
