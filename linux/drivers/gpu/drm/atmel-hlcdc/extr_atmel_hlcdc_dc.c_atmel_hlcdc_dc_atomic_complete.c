
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {struct atmel_hlcdc_dc* dev_private; } ;
struct drm_atomic_state {int dummy; } ;
struct atmel_hlcdc_dc_commit {struct drm_atomic_state* state; struct drm_device* dev; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int pending; TYPE_2__ wait; } ;
struct atmel_hlcdc_dc {TYPE_1__ commit; } ;


 int drm_atomic_helper_cleanup_planes (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_disables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_enables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_planes (struct drm_device*,struct drm_atomic_state*,int ) ;
 int drm_atomic_helper_wait_for_vblanks (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;
 int kfree (struct atmel_hlcdc_dc_commit*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all_locked (TYPE_2__*) ;

__attribute__((used)) static void
atmel_hlcdc_dc_atomic_complete(struct atmel_hlcdc_dc_commit *commit)
{
 struct drm_device *dev = commit->dev;
 struct atmel_hlcdc_dc *dc = dev->dev_private;
 struct drm_atomic_state *old_state = commit->state;


 drm_atomic_helper_commit_modeset_disables(dev, old_state);
 drm_atomic_helper_commit_planes(dev, old_state, 0);
 drm_atomic_helper_commit_modeset_enables(dev, old_state);

 drm_atomic_helper_wait_for_vblanks(dev, old_state);

 drm_atomic_helper_cleanup_planes(dev, old_state);

 drm_atomic_state_put(old_state);


 spin_lock(&dc->commit.wait.lock);
 dc->commit.pending = 0;
 wake_up_all_locked(&dc->commit.wait);
 spin_unlock(&dc->commit.wait.lock);

 kfree(commit);
}
