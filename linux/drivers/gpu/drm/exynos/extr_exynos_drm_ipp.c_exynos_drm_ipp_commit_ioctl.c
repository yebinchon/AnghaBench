
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_ipp_task {int flags; struct exynos_drm_ipp* ipp; } ;
struct exynos_drm_ipp {int done_wq; int id; int dev; } ;
struct drm_file {int dummy; } ;
struct drm_exynos_ioctl_ipp_commit {int flags; int user_data; int ipp_id; scalar_t__ reserved; } ;
struct drm_device {int dummy; } ;


 int DRM_DEV_DEBUG_DRIVER (int ,char*,int ,struct exynos_drm_ipp_task*) ;
 int DRM_EXYNOS_IPP_FLAGS ;
 int DRM_EXYNOS_IPP_FLAG_EVENT ;
 int DRM_EXYNOS_IPP_FLAG_NONBLOCK ;
 int DRM_EXYNOS_IPP_FLAG_TEST_ONLY ;
 int DRM_EXYNOS_IPP_TASK_ASYNC ;
 int DRM_EXYNOS_IPP_TASK_DONE ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 struct exynos_drm_ipp* __ipp_get (int ) ;
 int exynos_drm_ipp_event_create (struct exynos_drm_ipp_task*,struct drm_file*,int ) ;
 int exynos_drm_ipp_schedule_task (struct exynos_drm_ipp*,struct exynos_drm_ipp_task*) ;
 int exynos_drm_ipp_task_abort (struct exynos_drm_ipp*,struct exynos_drm_ipp_task*) ;
 struct exynos_drm_ipp_task* exynos_drm_ipp_task_alloc (struct exynos_drm_ipp*) ;
 int exynos_drm_ipp_task_check (struct exynos_drm_ipp_task*) ;
 int exynos_drm_ipp_task_cleanup (struct exynos_drm_ipp_task*) ;
 int exynos_drm_ipp_task_free (struct exynos_drm_ipp*,struct exynos_drm_ipp_task*) ;
 int exynos_drm_ipp_task_set (struct exynos_drm_ipp_task*,struct drm_exynos_ioctl_ipp_commit*) ;
 int exynos_drm_ipp_task_setup_buffers (struct exynos_drm_ipp_task*,struct drm_file*) ;
 int wait_event_interruptible (int ,int) ;

int exynos_drm_ipp_commit_ioctl(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 struct drm_exynos_ioctl_ipp_commit *arg = data;
 struct exynos_drm_ipp *ipp;
 struct exynos_drm_ipp_task *task;
 int ret = 0;

 if ((arg->flags & ~DRM_EXYNOS_IPP_FLAGS) || arg->reserved)
  return -EINVAL;


 if ((arg->flags & DRM_EXYNOS_IPP_FLAG_TEST_ONLY) &&
   (arg->flags & DRM_EXYNOS_IPP_FLAG_EVENT))
  return -EINVAL;

 ipp = __ipp_get(arg->ipp_id);
 if (!ipp)
  return -ENOENT;

 task = exynos_drm_ipp_task_alloc(ipp);
 if (!task)
  return -ENOMEM;

 ret = exynos_drm_ipp_task_set(task, arg);
 if (ret)
  goto free;

 ret = exynos_drm_ipp_task_check(task);
 if (ret)
  goto free;

 ret = exynos_drm_ipp_task_setup_buffers(task, file_priv);
 if (ret || arg->flags & DRM_EXYNOS_IPP_FLAG_TEST_ONLY)
  goto free;

 if (arg->flags & DRM_EXYNOS_IPP_FLAG_EVENT) {
  ret = exynos_drm_ipp_event_create(task, file_priv,
       arg->user_data);
  if (ret)
   goto free;
 }





 if (arg->flags & DRM_EXYNOS_IPP_FLAG_NONBLOCK) {
  DRM_DEV_DEBUG_DRIVER(ipp->dev,
         "ipp: %d, nonblocking processing task %pK\n",
         ipp->id, task);

  task->flags |= DRM_EXYNOS_IPP_TASK_ASYNC;
  exynos_drm_ipp_schedule_task(task->ipp, task);
  ret = 0;
 } else {
  DRM_DEV_DEBUG_DRIVER(ipp->dev, "ipp: %d, processing task %pK\n",
         ipp->id, task);
  exynos_drm_ipp_schedule_task(ipp, task);
  ret = wait_event_interruptible(ipp->done_wq,
     task->flags & DRM_EXYNOS_IPP_TASK_DONE);
  if (ret)
   exynos_drm_ipp_task_abort(ipp, task);
  else
   ret = exynos_drm_ipp_task_cleanup(task);
 }
 return ret;
free:
 exynos_drm_ipp_task_free(ipp, task);

 return ret;
}
