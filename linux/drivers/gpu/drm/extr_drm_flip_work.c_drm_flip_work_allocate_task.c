
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_flip_task {void* data; } ;
typedef int gfp_t ;


 struct drm_flip_task* kzalloc (int,int ) ;

struct drm_flip_task *drm_flip_work_allocate_task(void *data, gfp_t flags)
{
 struct drm_flip_task *task;

 task = kzalloc(sizeof(*task), flags);
 if (task)
  task->data = data;

 return task;
}
