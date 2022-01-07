
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct ww_acquire_ctx {int dummy; } ;
struct TYPE_7__ {int bo_count; int bo; int done_fence; int deps; } ;
struct v3d_render_job {scalar_t__ start; scalar_t__ end; TYPE_1__ base; struct v3d_render_job* render; int qts; int qms; int qma; int unref_list; } ;
struct v3d_file_priv {int dummy; } ;
struct v3d_dev {int sched_lock; int drm; } ;
struct v3d_bin_job {scalar_t__ start; scalar_t__ end; TYPE_1__ base; struct v3d_bin_job* render; int qts; int qms; int qma; int unref_list; } ;
struct drm_v3d_submit_cl {scalar_t__ rcl_start; scalar_t__ rcl_end; scalar_t__ pad; scalar_t__ bcl_start; scalar_t__ bcl_end; int out_sync; int bo_handle_count; int bo_handles; int qts; int qms; int qma; int in_sync_bcl; int in_sync_rcl; } ;
struct drm_file {struct v3d_file_priv* driver_priv; } ;
struct drm_device {int dummy; } ;


 int DRM_INFO (char*,scalar_t__) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int V3D_BIN ;
 int V3D_RENDER ;
 int dma_fence_get (int ) ;
 int drm_gem_fence_array_add (int *,int ) ;
 int drm_gem_unlock_reservations (int ,int ,struct ww_acquire_ctx*) ;
 struct v3d_render_job* kcalloc (int,int,int ) ;
 int kfree (struct v3d_render_job*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct v3d_dev* to_v3d_dev (struct drm_device*) ;
 int trace_v3d_submit_cl_ioctl (int *,scalar_t__,scalar_t__) ;
 int v3d_attach_fences_and_unlock_reservation (struct drm_file*,TYPE_1__*,struct ww_acquire_ctx*,int ,int ) ;
 int v3d_job_free ;
 int v3d_job_init (struct v3d_dev*,struct drm_file*,TYPE_1__*,int ,int ) ;
 int v3d_job_put (TYPE_1__*) ;
 int v3d_lock_bo_reservations (TYPE_1__*,struct ww_acquire_ctx*) ;
 int v3d_lookup_bos (struct drm_device*,struct drm_file*,TYPE_1__*,int ,int ) ;
 int v3d_push_job (struct v3d_file_priv*,TYPE_1__*,int ) ;
 int v3d_render_job_free ;

int
v3d_submit_cl_ioctl(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 struct v3d_dev *v3d = to_v3d_dev(dev);
 struct v3d_file_priv *v3d_priv = file_priv->driver_priv;
 struct drm_v3d_submit_cl *args = data;
 struct v3d_bin_job *bin = ((void*)0);
 struct v3d_render_job *render;
 struct ww_acquire_ctx acquire_ctx;
 int ret = 0;

 trace_v3d_submit_cl_ioctl(&v3d->drm, args->rcl_start, args->rcl_end);

 if (args->pad != 0) {
  DRM_INFO("pad must be zero: %d\n", args->pad);
  return -EINVAL;
 }

 render = kcalloc(1, sizeof(*render), GFP_KERNEL);
 if (!render)
  return -ENOMEM;

 render->start = args->rcl_start;
 render->end = args->rcl_end;
 INIT_LIST_HEAD(&render->unref_list);

 ret = v3d_job_init(v3d, file_priv, &render->base,
      v3d_render_job_free, args->in_sync_rcl);
 if (ret) {
  kfree(render);
  return ret;
 }

 if (args->bcl_start != args->bcl_end) {
  bin = kcalloc(1, sizeof(*bin), GFP_KERNEL);
  if (!bin) {
   v3d_job_put(&render->base);
   return -ENOMEM;
  }

  ret = v3d_job_init(v3d, file_priv, &bin->base,
       v3d_job_free, args->in_sync_bcl);
  if (ret) {
   v3d_job_put(&render->base);
   kfree(bin);
   return ret;
  }

  bin->start = args->bcl_start;
  bin->end = args->bcl_end;
  bin->qma = args->qma;
  bin->qms = args->qms;
  bin->qts = args->qts;
  bin->render = render;
 }

 ret = v3d_lookup_bos(dev, file_priv, &render->base,
        args->bo_handles, args->bo_handle_count);
 if (ret)
  goto fail;

 ret = v3d_lock_bo_reservations(&render->base, &acquire_ctx);
 if (ret)
  goto fail;

 mutex_lock(&v3d->sched_lock);
 if (bin) {
  ret = v3d_push_job(v3d_priv, &bin->base, V3D_BIN);
  if (ret)
   goto fail_unreserve;

  ret = drm_gem_fence_array_add(&render->base.deps,
           dma_fence_get(bin->base.done_fence));
  if (ret)
   goto fail_unreserve;
 }

 ret = v3d_push_job(v3d_priv, &render->base, V3D_RENDER);
 if (ret)
  goto fail_unreserve;
 mutex_unlock(&v3d->sched_lock);

 v3d_attach_fences_and_unlock_reservation(file_priv,
       &render->base,
       &acquire_ctx,
       args->out_sync,
       render->base.done_fence);

 if (bin)
  v3d_job_put(&bin->base);
 v3d_job_put(&render->base);

 return 0;

fail_unreserve:
 mutex_unlock(&v3d->sched_lock);
 drm_gem_unlock_reservations(render->base.bo,
        render->base.bo_count, &acquire_ctx);
fail:
 if (bin)
  v3d_job_put(&bin->base);
 v3d_job_put(&render->base);

 return ret;
}
