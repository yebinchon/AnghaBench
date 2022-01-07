
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_crtc_commit {int flip_done; } ;
struct TYPE_7__ {int id; } ;
struct drm_crtc {int name; TYPE_3__ base; } ;
struct drm_atomic_state {TYPE_4__* fake_commit; TYPE_2__* crtcs; } ;
struct TYPE_8__ {int flip_done; } ;
struct TYPE_6__ {struct drm_crtc* ptr; struct drm_crtc_commit* commit; } ;


 int DRM_ERROR (char*,int ,int ) ;
 int HZ ;
 int complete_all (int *) ;
 int wait_for_completion_timeout (int *,int) ;

void drm_atomic_helper_wait_for_flip_done(struct drm_device *dev,
       struct drm_atomic_state *old_state)
{
 struct drm_crtc *crtc;
 int i;

 for (i = 0; i < dev->mode_config.num_crtc; i++) {
  struct drm_crtc_commit *commit = old_state->crtcs[i].commit;
  int ret;

  crtc = old_state->crtcs[i].ptr;

  if (!crtc || !commit)
   continue;

  ret = wait_for_completion_timeout(&commit->flip_done, 10 * HZ);
  if (ret == 0)
   DRM_ERROR("[CRTC:%d:%s] flip_done timed out\n",
      crtc->base.id, crtc->name);
 }

 if (old_state->fake_commit)
  complete_all(&old_state->fake_commit->flip_done);
}
