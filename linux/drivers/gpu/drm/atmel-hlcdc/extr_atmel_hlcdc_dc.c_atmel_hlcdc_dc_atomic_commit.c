
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {struct atmel_hlcdc_dc* dev_private; } ;
struct drm_atomic_state {int dummy; } ;
struct atmel_hlcdc_dc_commit {int work; struct drm_atomic_state* state; struct drm_device* dev; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int pending; TYPE_2__ wait; } ;
struct atmel_hlcdc_dc {int wq; TYPE_1__ commit; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int atmel_hlcdc_dc_atomic_complete (struct atmel_hlcdc_dc_commit*) ;
 int atmel_hlcdc_dc_atomic_work ;
 int drm_atomic_helper_cleanup_planes (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_prepare_planes (struct drm_device*,struct drm_atomic_state*) ;
 scalar_t__ drm_atomic_helper_swap_state (struct drm_atomic_state*,int) ;
 int drm_atomic_state_get (struct drm_atomic_state*) ;
 int kfree (struct atmel_hlcdc_dc_commit*) ;
 struct atmel_hlcdc_dc_commit* kzalloc (int,int ) ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_interruptible_locked (TYPE_2__,int) ;

__attribute__((used)) static int atmel_hlcdc_dc_atomic_commit(struct drm_device *dev,
     struct drm_atomic_state *state,
     bool async)
{
 struct atmel_hlcdc_dc *dc = dev->dev_private;
 struct atmel_hlcdc_dc_commit *commit;
 int ret;

 ret = drm_atomic_helper_prepare_planes(dev, state);
 if (ret)
  return ret;


 commit = kzalloc(sizeof(*commit), GFP_KERNEL);
 if (!commit) {
  ret = -ENOMEM;
  goto error;
 }

 INIT_WORK(&commit->work, atmel_hlcdc_dc_atomic_work);
 commit->dev = dev;
 commit->state = state;

 spin_lock(&dc->commit.wait.lock);
 ret = wait_event_interruptible_locked(dc->commit.wait,
           !dc->commit.pending);
 if (ret == 0)
  dc->commit.pending = 1;
 spin_unlock(&dc->commit.wait.lock);

 if (ret)
  goto err_free;


 BUG_ON(drm_atomic_helper_swap_state(state, 0) < 0);


 drm_atomic_state_get(state);
 if (async)
  queue_work(dc->wq, &commit->work);
 else
  atmel_hlcdc_dc_atomic_complete(commit);

 return 0;

err_free:
 kfree(commit);
error:
 drm_atomic_helper_cleanup_planes(dev, state);
 return ret;
}
