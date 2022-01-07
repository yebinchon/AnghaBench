
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ww_acquire_ctx {int dummy; } ;
struct v3d_job {int bo_count; int * bo; int deps; } ;


 int drm_gem_fence_array_add_implicit (int *,int ,int) ;
 int drm_gem_lock_reservations (int *,int,struct ww_acquire_ctx*) ;
 int drm_gem_unlock_reservations (int *,int,struct ww_acquire_ctx*) ;

__attribute__((used)) static int
v3d_lock_bo_reservations(struct v3d_job *job,
    struct ww_acquire_ctx *acquire_ctx)
{
 int i, ret;

 ret = drm_gem_lock_reservations(job->bo, job->bo_count, acquire_ctx);
 if (ret)
  return ret;

 for (i = 0; i < job->bo_count; i++) {
  ret = drm_gem_fence_array_add_implicit(&job->deps,
             job->bo[i], 1);
  if (ret) {
   drm_gem_unlock_reservations(job->bo, job->bo_count,
          acquire_ctx);
   return ret;
  }
 }

 return 0;
}
