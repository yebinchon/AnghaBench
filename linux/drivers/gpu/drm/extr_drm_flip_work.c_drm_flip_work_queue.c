
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_flip_work {int (* func ) (struct drm_flip_work*,void*) ;int name; } ;
struct drm_flip_task {int dummy; } ;


 int DRM_ERROR (char*,int ) ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 scalar_t__ drm_can_sleep () ;
 struct drm_flip_task* drm_flip_work_allocate_task (void*,int ) ;
 int drm_flip_work_queue_task (struct drm_flip_work*,struct drm_flip_task*) ;
 int stub1 (struct drm_flip_work*,void*) ;

void drm_flip_work_queue(struct drm_flip_work *work, void *val)
{
 struct drm_flip_task *task;

 task = drm_flip_work_allocate_task(val,
    drm_can_sleep() ? GFP_KERNEL : GFP_ATOMIC);
 if (task) {
  drm_flip_work_queue_task(work, task);
 } else {
  DRM_ERROR("%s could not allocate task!\n", work->name);
  work->func(work, val);
 }
}
