
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_pending_timer {int timer; } ;
struct msm_kms {unsigned int pending_crtc_mask; TYPE_1__* funcs; int commit_lock; struct msm_pending_timer* pending_timers; } ;
struct msm_drm_private {struct msm_kms* kms; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct drm_crtc {int dummy; } ;
struct drm_atomic_state {struct drm_device* dev; } ;
typedef int ktime_t ;
struct TYPE_2__ {int (* disable_commit ) (struct msm_kms*) ;int (* complete_commit ) (struct msm_kms*,unsigned int) ;int (* wait_flush ) (struct msm_kms*,unsigned int) ;int (* flush_commit ) (struct msm_kms*,unsigned int) ;int (* vsync_time ) (struct msm_kms*,struct drm_crtc*) ;int (* prepare_commit ) (struct msm_kms*,struct drm_atomic_state*) ;int (* enable_commit ) (struct msm_kms*) ;} ;


 int HRTIMER_MODE_ABS ;
 int WARN_ON (int) ;
 scalar_t__ can_do_async (struct drm_atomic_state*,struct drm_crtc**) ;
 int drm_atomic_helper_cleanup_planes (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_hw_done (struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_disables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_enables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_planes (struct drm_device*,struct drm_atomic_state*,int ) ;
 size_t drm_crtc_index (struct drm_crtc*) ;
 unsigned int drm_crtc_mask (struct drm_crtc*) ;
 unsigned int get_crtc_mask (struct drm_atomic_state*) ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_sub (int ,int ) ;
 int ms_to_ktime (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct msm_kms*) ;
 int stub2 (struct msm_kms*,unsigned int) ;
 int stub3 (struct msm_kms*,struct drm_atomic_state*) ;
 int stub4 (struct msm_kms*,struct drm_crtc*) ;
 int stub5 (struct msm_kms*) ;
 int stub6 (struct msm_kms*,unsigned int) ;
 int stub7 (struct msm_kms*,unsigned int) ;
 int stub8 (struct msm_kms*,unsigned int) ;
 int stub9 (struct msm_kms*) ;
 int trace_msm_atomic_commit_tail_finish (int,unsigned int) ;
 int trace_msm_atomic_commit_tail_start (int,unsigned int) ;
 int trace_msm_atomic_flush_commit (unsigned int) ;
 int trace_msm_atomic_wait_flush_finish (unsigned int) ;
 int trace_msm_atomic_wait_flush_start (unsigned int) ;

void msm_atomic_commit_tail(struct drm_atomic_state *state)
{
 struct drm_device *dev = state->dev;
 struct msm_drm_private *priv = dev->dev_private;
 struct msm_kms *kms = priv->kms;
 struct drm_crtc *async_crtc = ((void*)0);
 unsigned crtc_mask = get_crtc_mask(state);
 bool async = kms->funcs->vsync_time &&
   can_do_async(state, &async_crtc);

 trace_msm_atomic_commit_tail_start(async, crtc_mask);

 kms->funcs->enable_commit(kms);





 trace_msm_atomic_wait_flush_start(crtc_mask);
 kms->funcs->wait_flush(kms, crtc_mask);
 trace_msm_atomic_wait_flush_finish(crtc_mask);

 mutex_lock(&kms->commit_lock);





 kms->funcs->prepare_commit(kms, state);




 drm_atomic_helper_commit_modeset_disables(dev, state);
 drm_atomic_helper_commit_planes(dev, state, 0);
 drm_atomic_helper_commit_modeset_enables(dev, state);

 if (async) {
  struct msm_pending_timer *timer =
   &kms->pending_timers[drm_crtc_index(async_crtc)];


  WARN_ON(crtc_mask != drm_crtc_mask(async_crtc));





  if (!(kms->pending_crtc_mask & crtc_mask)) {
   ktime_t vsync_time, wakeup_time;

   kms->pending_crtc_mask |= crtc_mask;

   vsync_time = kms->funcs->vsync_time(kms, async_crtc);
   wakeup_time = ktime_sub(vsync_time, ms_to_ktime(1));

   hrtimer_start(&timer->timer, wakeup_time,
     HRTIMER_MODE_ABS);
  }

  kms->funcs->disable_commit(kms);
  mutex_unlock(&kms->commit_lock);






  drm_atomic_helper_commit_hw_done(state);
  drm_atomic_helper_cleanup_planes(dev, state);

  trace_msm_atomic_commit_tail_finish(async, crtc_mask);

  return;
 }





 kms->pending_crtc_mask &= ~crtc_mask;




 trace_msm_atomic_flush_commit(crtc_mask);
 kms->funcs->flush_commit(kms, crtc_mask);
 mutex_unlock(&kms->commit_lock);




 trace_msm_atomic_wait_flush_start(crtc_mask);
 kms->funcs->wait_flush(kms, crtc_mask);
 trace_msm_atomic_wait_flush_finish(crtc_mask);

 mutex_lock(&kms->commit_lock);
 kms->funcs->complete_commit(kms, crtc_mask);
 mutex_unlock(&kms->commit_lock);
 kms->funcs->disable_commit(kms);

 drm_atomic_helper_commit_hw_done(state);
 drm_atomic_helper_cleanup_planes(dev, state);

 trace_msm_atomic_commit_tail_finish(async, crtc_mask);
}
