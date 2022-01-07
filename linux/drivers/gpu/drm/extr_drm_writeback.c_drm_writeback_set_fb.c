
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_framebuffer {int dummy; } ;
struct drm_connector_state {TYPE_1__* writeback_job; TYPE_2__* connector; } ;
struct TYPE_4__ {scalar_t__ connector_type; } ;
struct TYPE_3__ {int fb; int connector; } ;


 scalar_t__ DRM_MODE_CONNECTOR_WRITEBACK ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int drm_connector_to_writeback (TYPE_2__*) ;
 int drm_framebuffer_assign (int *,struct drm_framebuffer*) ;
 TYPE_1__* kzalloc (int,int ) ;

int drm_writeback_set_fb(struct drm_connector_state *conn_state,
    struct drm_framebuffer *fb)
{
 WARN_ON(conn_state->connector->connector_type != DRM_MODE_CONNECTOR_WRITEBACK);

 if (!conn_state->writeback_job) {
  conn_state->writeback_job =
   kzalloc(sizeof(*conn_state->writeback_job), GFP_KERNEL);
  if (!conn_state->writeback_job)
   return -ENOMEM;

  conn_state->writeback_job->connector =
   drm_connector_to_writeback(conn_state->connector);
 }

 drm_framebuffer_assign(&conn_state->writeback_job->fb, fb);
 return 0;
}
