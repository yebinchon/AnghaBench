
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v3d_dev {int dev; TYPE_1__* queue; } ;
struct TYPE_2__ {int sched; } ;


 size_t V3D_BIN ;
 size_t V3D_CACHE_CLEAN ;
 size_t V3D_CSD ;
 size_t V3D_RENDER ;
 size_t V3D_TFU ;
 int dev_err (int ,char*,int) ;
 int drm_sched_init (int *,int *,int,int,int ,char*) ;
 int msecs_to_jiffies (int) ;
 int v3d_bin_sched_ops ;
 int v3d_cache_clean_sched_ops ;
 int v3d_csd_sched_ops ;
 scalar_t__ v3d_has_csd (struct v3d_dev*) ;
 int v3d_render_sched_ops ;
 int v3d_sched_fini (struct v3d_dev*) ;
 int v3d_tfu_sched_ops ;

int
v3d_sched_init(struct v3d_dev *v3d)
{
 int hw_jobs_limit = 1;
 int job_hang_limit = 0;
 int hang_limit_ms = 500;
 int ret;

 ret = drm_sched_init(&v3d->queue[V3D_BIN].sched,
        &v3d_bin_sched_ops,
        hw_jobs_limit, job_hang_limit,
        msecs_to_jiffies(hang_limit_ms),
        "v3d_bin");
 if (ret) {
  dev_err(v3d->dev, "Failed to create bin scheduler: %d.", ret);
  return ret;
 }

 ret = drm_sched_init(&v3d->queue[V3D_RENDER].sched,
        &v3d_render_sched_ops,
        hw_jobs_limit, job_hang_limit,
        msecs_to_jiffies(hang_limit_ms),
        "v3d_render");
 if (ret) {
  dev_err(v3d->dev, "Failed to create render scheduler: %d.",
   ret);
  v3d_sched_fini(v3d);
  return ret;
 }

 ret = drm_sched_init(&v3d->queue[V3D_TFU].sched,
        &v3d_tfu_sched_ops,
        hw_jobs_limit, job_hang_limit,
        msecs_to_jiffies(hang_limit_ms),
        "v3d_tfu");
 if (ret) {
  dev_err(v3d->dev, "Failed to create TFU scheduler: %d.",
   ret);
  v3d_sched_fini(v3d);
  return ret;
 }

 if (v3d_has_csd(v3d)) {
  ret = drm_sched_init(&v3d->queue[V3D_CSD].sched,
         &v3d_csd_sched_ops,
         hw_jobs_limit, job_hang_limit,
         msecs_to_jiffies(hang_limit_ms),
         "v3d_csd");
  if (ret) {
   dev_err(v3d->dev, "Failed to create CSD scheduler: %d.",
    ret);
   v3d_sched_fini(v3d);
   return ret;
  }

  ret = drm_sched_init(&v3d->queue[V3D_CACHE_CLEAN].sched,
         &v3d_cache_clean_sched_ops,
         hw_jobs_limit, job_hang_limit,
         msecs_to_jiffies(hang_limit_ms),
         "v3d_cache_clean");
  if (ret) {
   dev_err(v3d->dev, "Failed to create CACHE_CLEAN scheduler: %d.",
    ret);
   v3d_sched_fini(v3d);
   return ret;
  }
 }

 return 0;
}
