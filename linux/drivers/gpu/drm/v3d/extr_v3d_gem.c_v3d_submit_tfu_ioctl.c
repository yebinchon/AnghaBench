
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ww_acquire_ctx {int dummy; } ;
struct TYPE_6__ {int bo_count; struct drm_gem_object** bo; int done_fence; } ;
struct drm_v3d_submit_tfu {int out_sync; int * bo_handles; int in_sync; int iia; } ;
struct v3d_tfu_job {TYPE_1__ base; struct drm_v3d_submit_tfu args; } ;
struct v3d_file_priv {int dummy; } ;
struct v3d_dev {int sched_lock; int drm; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int table_lock; int object_idr; struct v3d_file_priv* driver_priv; } ;
struct drm_device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int DRM_DEBUG (char*,size_t,int ) ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int V3D_TFU ;
 int drm_gem_object_get (struct drm_gem_object*) ;
 int drm_gem_unlock_reservations (struct drm_gem_object**,size_t,struct ww_acquire_ctx*) ;
 struct drm_gem_object* idr_find (int *,int ) ;
 void* kcalloc (int,int,int ) ;
 int kfree (struct v3d_tfu_job*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct v3d_dev* to_v3d_dev (struct drm_device*) ;
 int trace_v3d_submit_tfu_ioctl (int *,int ) ;
 int v3d_attach_fences_and_unlock_reservation (struct drm_file*,TYPE_1__*,struct ww_acquire_ctx*,int ,int ) ;
 int v3d_job_free ;
 int v3d_job_init (struct v3d_dev*,struct drm_file*,TYPE_1__*,int ,int ) ;
 int v3d_job_put (TYPE_1__*) ;
 int v3d_lock_bo_reservations (TYPE_1__*,struct ww_acquire_ctx*) ;
 int v3d_push_job (struct v3d_file_priv*,TYPE_1__*,int ) ;

int
v3d_submit_tfu_ioctl(struct drm_device *dev, void *data,
       struct drm_file *file_priv)
{
 struct v3d_dev *v3d = to_v3d_dev(dev);
 struct v3d_file_priv *v3d_priv = file_priv->driver_priv;
 struct drm_v3d_submit_tfu *args = data;
 struct v3d_tfu_job *job;
 struct ww_acquire_ctx acquire_ctx;
 int ret = 0;

 trace_v3d_submit_tfu_ioctl(&v3d->drm, args->iia);

 job = kcalloc(1, sizeof(*job), GFP_KERNEL);
 if (!job)
  return -ENOMEM;

 ret = v3d_job_init(v3d, file_priv, &job->base,
      v3d_job_free, args->in_sync);
 if (ret) {
  kfree(job);
  return ret;
 }

 job->base.bo = kcalloc(ARRAY_SIZE(args->bo_handles),
          sizeof(*job->base.bo), GFP_KERNEL);
 if (!job->base.bo) {
  v3d_job_put(&job->base);
  return -ENOMEM;
 }

 job->args = *args;

 spin_lock(&file_priv->table_lock);
 for (job->base.bo_count = 0;
      job->base.bo_count < ARRAY_SIZE(args->bo_handles);
      job->base.bo_count++) {
  struct drm_gem_object *bo;

  if (!args->bo_handles[job->base.bo_count])
   break;

  bo = idr_find(&file_priv->object_idr,
         args->bo_handles[job->base.bo_count]);
  if (!bo) {
   DRM_DEBUG("Failed to look up GEM BO %d: %d\n",
      job->base.bo_count,
      args->bo_handles[job->base.bo_count]);
   ret = -ENOENT;
   spin_unlock(&file_priv->table_lock);
   goto fail;
  }
  drm_gem_object_get(bo);
  job->base.bo[job->base.bo_count] = bo;
 }
 spin_unlock(&file_priv->table_lock);

 ret = v3d_lock_bo_reservations(&job->base, &acquire_ctx);
 if (ret)
  goto fail;

 mutex_lock(&v3d->sched_lock);
 ret = v3d_push_job(v3d_priv, &job->base, V3D_TFU);
 if (ret)
  goto fail_unreserve;
 mutex_unlock(&v3d->sched_lock);

 v3d_attach_fences_and_unlock_reservation(file_priv,
       &job->base, &acquire_ctx,
       args->out_sync,
       job->base.done_fence);

 v3d_job_put(&job->base);

 return 0;

fail_unreserve:
 mutex_unlock(&v3d->sched_lock);
 drm_gem_unlock_reservations(job->base.bo, job->base.bo_count,
        &acquire_ctx);
fail:
 v3d_job_put(&job->base);

 return ret;
}
