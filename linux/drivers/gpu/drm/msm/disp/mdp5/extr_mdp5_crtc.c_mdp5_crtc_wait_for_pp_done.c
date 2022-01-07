
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* mixer; } ;
struct mdp5_crtc_state {TYPE_1__ pipeline; } ;
struct mdp5_crtc {int pp_completion; } ;
struct drm_device {int dev; } ;
struct drm_crtc {int state; struct drm_device* dev; } ;
struct TYPE_4__ {int lm; } ;


 int dev_warn (int ,char*,int ) ;
 int msecs_to_jiffies (int) ;
 struct mdp5_crtc* to_mdp5_crtc (struct drm_crtc*) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void mdp5_crtc_wait_for_pp_done(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct mdp5_crtc *mdp5_crtc = to_mdp5_crtc(crtc);
 struct mdp5_crtc_state *mdp5_cstate = to_mdp5_crtc_state(crtc->state);
 int ret;

 ret = wait_for_completion_timeout(&mdp5_crtc->pp_completion,
      msecs_to_jiffies(50));
 if (ret == 0)
  dev_warn(dev->dev, "pp done time out, lm=%d\n",
    mdp5_cstate->pipeline.mixer->lm);
}
