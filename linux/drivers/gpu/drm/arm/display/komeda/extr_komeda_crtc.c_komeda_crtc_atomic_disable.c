
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct komeda_pipeline_state {scalar_t__ active_comps; } ;
struct komeda_pipeline {int id; } ;
struct komeda_dev {TYPE_2__* funcs; } ;
struct komeda_crtc_state {int active_pipes; int affected_pipes; } ;
struct komeda_crtc {struct completion* disable_done; struct komeda_pipeline* master; struct komeda_pipeline* slave; } ;
struct drm_crtc_state {int state; } ;
struct drm_crtc {TYPE_4__* dev; TYPE_3__* state; } ;
struct completion {int dummy; } ;
struct TYPE_8__ {int event_lock; struct komeda_dev* dev_private; } ;
struct TYPE_7__ {scalar_t__ active; TYPE_1__* commit; } ;
struct TYPE_6__ {int (* flush ) (struct komeda_dev*,int ,int ) ;} ;
struct TYPE_5__ {struct completion flip_done; } ;


 int DRM_DEBUG_ATOMIC (char*,int ,int ,int ) ;
 int DRM_ERROR (char*,int ) ;
 int HZ ;
 int drm_crtc_index (struct drm_crtc*) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 scalar_t__ has_bit (int ,int ) ;
 int init_completion (struct completion*) ;
 int komeda_crtc_unprepare (struct komeda_crtc*) ;
 int komeda_pipeline_disable (struct komeda_pipeline*,int ) ;
 struct komeda_pipeline_state* komeda_pipeline_get_old_state (struct komeda_pipeline*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct komeda_dev*,int ,int ) ;
 struct komeda_crtc* to_kcrtc (struct drm_crtc*) ;
 struct komeda_crtc_state* to_kcrtc_st (struct drm_crtc_state*) ;
 int wait_for_completion_timeout (struct completion*,int ) ;

__attribute__((used)) static void
komeda_crtc_atomic_disable(struct drm_crtc *crtc,
      struct drm_crtc_state *old)
{
 struct komeda_crtc *kcrtc = to_kcrtc(crtc);
 struct komeda_crtc_state *old_st = to_kcrtc_st(old);
 struct komeda_dev *mdev = crtc->dev->dev_private;
 struct komeda_pipeline *master = kcrtc->master;
 struct komeda_pipeline *slave = kcrtc->slave;
 struct completion *disable_done = &crtc->state->commit->flip_done;
 struct completion temp;
 int timeout;

 DRM_DEBUG_ATOMIC("CRTC%d_DISABLE: active_pipes: 0x%x, affected: 0x%x.\n",
    drm_crtc_index(crtc),
    old_st->active_pipes, old_st->affected_pipes);

 if (slave && has_bit(slave->id, old_st->active_pipes))
  komeda_pipeline_disable(slave, old->state);

 if (has_bit(master->id, old_st->active_pipes))
  komeda_pipeline_disable(master, old->state);
 if (crtc->state->active) {
  struct komeda_pipeline_state *pipe_st;

  pipe_st = komeda_pipeline_get_old_state(master, old->state);
  pipe_st->active_comps = 0;

  init_completion(&temp);
  kcrtc->disable_done = &temp;
  disable_done = &temp;
 }

 mdev->funcs->flush(mdev, master->id, 0);


 timeout = wait_for_completion_timeout(disable_done, HZ);
 if (timeout == 0) {
  DRM_ERROR("disable pipeline%d timeout.\n", kcrtc->master->id);
  if (crtc->state->active) {
   unsigned long flags;

   spin_lock_irqsave(&crtc->dev->event_lock, flags);
   kcrtc->disable_done = ((void*)0);
   spin_unlock_irqrestore(&crtc->dev->event_lock, flags);
  }
 }

 drm_crtc_vblank_off(crtc);
 komeda_crtc_unprepare(kcrtc);
}
