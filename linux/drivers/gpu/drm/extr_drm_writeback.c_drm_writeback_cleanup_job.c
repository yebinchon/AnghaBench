
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_writeback_job {scalar_t__ out_fence; scalar_t__ fb; scalar_t__ prepared; struct drm_writeback_connector* connector; } ;
struct TYPE_2__ {struct drm_connector_helper_funcs* helper_private; } ;
struct drm_writeback_connector {TYPE_1__ base; } ;
struct drm_connector_helper_funcs {int (* cleanup_writeback_job ) (struct drm_writeback_connector*,struct drm_writeback_job*) ;} ;


 int dma_fence_put (scalar_t__) ;
 int drm_framebuffer_put (scalar_t__) ;
 int kfree (struct drm_writeback_job*) ;
 int stub1 (struct drm_writeback_connector*,struct drm_writeback_job*) ;

void drm_writeback_cleanup_job(struct drm_writeback_job *job)
{
 struct drm_writeback_connector *connector = job->connector;
 const struct drm_connector_helper_funcs *funcs =
  connector->base.helper_private;

 if (job->prepared && funcs->cleanup_writeback_job)
  funcs->cleanup_writeback_job(connector, job);

 if (job->fb)
  drm_framebuffer_put(job->fb);

 if (job->out_fence)
  dma_fence_put(job->out_fence);

 kfree(job);
}
