
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_atomic_state {int commit_work; scalar_t__ async_update; } ;


 int INIT_WORK (int *,int ) ;
 int commit_tail (struct drm_atomic_state*) ;
 int commit_work ;
 int drm_atomic_helper_async_commit (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_cleanup_planes (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_prepare_planes (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_setup_commit (struct drm_atomic_state*,int) ;
 int drm_atomic_helper_swap_state (struct drm_atomic_state*,int) ;
 int drm_atomic_helper_wait_for_fences (struct drm_device*,struct drm_atomic_state*,int) ;
 int drm_atomic_state_get (struct drm_atomic_state*) ;
 int queue_work (int ,int *) ;
 int system_unbound_wq ;

int drm_atomic_helper_commit(struct drm_device *dev,
        struct drm_atomic_state *state,
        bool nonblock)
{
 int ret;

 if (state->async_update) {
  ret = drm_atomic_helper_prepare_planes(dev, state);
  if (ret)
   return ret;

  drm_atomic_helper_async_commit(dev, state);
  drm_atomic_helper_cleanup_planes(dev, state);

  return 0;
 }

 ret = drm_atomic_helper_setup_commit(state, nonblock);
 if (ret)
  return ret;

 INIT_WORK(&state->commit_work, commit_work);

 ret = drm_atomic_helper_prepare_planes(dev, state);
 if (ret)
  return ret;

 if (!nonblock) {
  ret = drm_atomic_helper_wait_for_fences(dev, state, 1);
  if (ret)
   goto err;
 }







 ret = drm_atomic_helper_swap_state(state, 1);
 if (ret)
  goto err;
 drm_atomic_state_get(state);
 if (nonblock)
  queue_work(system_unbound_wq, &state->commit_work);
 else
  commit_tail(state);

 return 0;

err:
 drm_atomic_helper_cleanup_planes(dev, state);
 return ret;
}
