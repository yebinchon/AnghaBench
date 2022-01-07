
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dev {int async_modeset; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {int legacy_cursor_update; int commit_work; scalar_t__ async_update; } ;


 int BUG_ON (int) ;
 int INIT_WORK (int *,int ) ;
 int commit_work ;
 int down_interruptible (int *) ;
 int drm_atomic_helper_async_commit (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_cleanup_planes (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_prepare_planes (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_setup_commit (struct drm_atomic_state*,int) ;
 scalar_t__ drm_atomic_helper_swap_state (struct drm_atomic_state*,int) ;
 int drm_atomic_helper_wait_for_fences (struct drm_device*,struct drm_atomic_state*,int) ;
 int drm_atomic_state_get (struct drm_atomic_state*) ;
 int queue_work (int ,int *) ;
 int system_unbound_wq ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int up (int *) ;
 int vc4_atomic_complete_commit (struct drm_atomic_state*) ;

__attribute__((used)) static int vc4_atomic_commit(struct drm_device *dev,
        struct drm_atomic_state *state,
        bool nonblock)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 int ret;

 if (state->async_update) {
  ret = down_interruptible(&vc4->async_modeset);
  if (ret)
   return ret;

  ret = drm_atomic_helper_prepare_planes(dev, state);
  if (ret) {
   up(&vc4->async_modeset);
   return ret;
  }

  drm_atomic_helper_async_commit(dev, state);

  drm_atomic_helper_cleanup_planes(dev, state);

  up(&vc4->async_modeset);

  return 0;
 }






 state->legacy_cursor_update = 0;
 ret = drm_atomic_helper_setup_commit(state, nonblock);
 if (ret)
  return ret;

 INIT_WORK(&state->commit_work, commit_work);

 ret = down_interruptible(&vc4->async_modeset);
 if (ret)
  return ret;

 ret = drm_atomic_helper_prepare_planes(dev, state);
 if (ret) {
  up(&vc4->async_modeset);
  return ret;
 }

 if (!nonblock) {
  ret = drm_atomic_helper_wait_for_fences(dev, state, 1);
  if (ret) {
   drm_atomic_helper_cleanup_planes(dev, state);
   up(&vc4->async_modeset);
   return ret;
  }
 }







 BUG_ON(drm_atomic_helper_swap_state(state, 0) < 0);
 drm_atomic_state_get(state);
 if (nonblock)
  queue_work(system_unbound_wq, &state->commit_work);
 else
  vc4_atomic_complete_commit(state);

 return 0;
}
