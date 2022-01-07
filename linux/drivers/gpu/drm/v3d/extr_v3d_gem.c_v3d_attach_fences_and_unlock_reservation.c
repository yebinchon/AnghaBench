
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ww_acquire_ctx {int dummy; } ;
struct v3d_job {int bo_count; TYPE_1__** bo; int done_fence; } ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {int resv; } ;


 int dma_resv_add_excl_fence (int ,int ) ;
 int drm_gem_unlock_reservations (TYPE_1__**,int,struct ww_acquire_ctx*) ;
 struct drm_syncobj* drm_syncobj_find (struct drm_file*,int ) ;
 int drm_syncobj_put (struct drm_syncobj*) ;
 int drm_syncobj_replace_fence (struct drm_syncobj*,struct dma_fence*) ;

__attribute__((used)) static void
v3d_attach_fences_and_unlock_reservation(struct drm_file *file_priv,
      struct v3d_job *job,
      struct ww_acquire_ctx *acquire_ctx,
      u32 out_sync,
      struct dma_fence *done_fence)
{
 struct drm_syncobj *sync_out;
 int i;

 for (i = 0; i < job->bo_count; i++) {

  dma_resv_add_excl_fence(job->bo[i]->resv,
        job->done_fence);
 }

 drm_gem_unlock_reservations(job->bo, job->bo_count, acquire_ctx);


 sync_out = drm_syncobj_find(file_priv, out_sync);
 if (sync_out) {
  drm_syncobj_replace_fence(sync_out, done_fence);
  drm_syncobj_put(sync_out);
 }
}
