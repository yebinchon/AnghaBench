
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct drm_connector_state* state; } ;
struct TYPE_10__ {TYPE_3__ base; } ;
struct komeda_wb_connector {TYPE_5__ base; } ;
struct komeda_pipeline {int id; } ;
struct komeda_dev {TYPE_4__* funcs; } ;
struct komeda_crtc_state {int active_pipes; int affected_pipes; } ;
struct TYPE_7__ {TYPE_1__* dev; } ;
struct komeda_crtc {struct komeda_wb_connector* wb_conn; struct komeda_pipeline* slave; struct komeda_pipeline* master; TYPE_2__ base; } ;
struct drm_crtc_state {int state; } ;
struct drm_crtc {int state; } ;
struct drm_connector_state {scalar_t__ writeback_job; } ;
struct TYPE_9__ {int (* flush ) (struct komeda_dev*,int ,int ) ;} ;
struct TYPE_6__ {struct komeda_dev* dev_private; } ;


 int DRM_DEBUG_ATOMIC (char*,int ,int ,int ) ;
 int drm_crtc_index (struct drm_crtc*) ;
 int drm_writeback_queue_job (TYPE_5__*,struct drm_connector_state*) ;
 scalar_t__ has_bit (int ,int ) ;
 int komeda_pipeline_update (struct komeda_pipeline*,int ) ;
 int stub1 (struct komeda_dev*,int ,int ) ;
 struct komeda_crtc* to_kcrtc (struct drm_crtc*) ;
 struct komeda_crtc_state* to_kcrtc_st (int ) ;

__attribute__((used)) static void
komeda_crtc_do_flush(struct drm_crtc *crtc,
       struct drm_crtc_state *old)
{
 struct komeda_crtc *kcrtc = to_kcrtc(crtc);
 struct komeda_crtc_state *kcrtc_st = to_kcrtc_st(crtc->state);
 struct komeda_dev *mdev = kcrtc->base.dev->dev_private;
 struct komeda_pipeline *master = kcrtc->master;
 struct komeda_pipeline *slave = kcrtc->slave;
 struct komeda_wb_connector *wb_conn = kcrtc->wb_conn;
 struct drm_connector_state *conn_st;

 DRM_DEBUG_ATOMIC("CRTC%d_FLUSH: active_pipes: 0x%x, affected: 0x%x.\n",
    drm_crtc_index(crtc),
    kcrtc_st->active_pipes, kcrtc_st->affected_pipes);


 if (has_bit(master->id, kcrtc_st->affected_pipes))
  komeda_pipeline_update(master, old->state);

 if (slave && has_bit(slave->id, kcrtc_st->affected_pipes))
  komeda_pipeline_update(slave, old->state);

 conn_st = wb_conn ? wb_conn->base.base.state : ((void*)0);
 if (conn_st && conn_st->writeback_job)
  drm_writeback_queue_job(&wb_conn->base, conn_st);


 mdev->funcs->flush(mdev, master->id, kcrtc_st->active_pipes);
}
