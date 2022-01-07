
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdp5_ctl {int dummy; } ;
struct mdp5_crtc_state {struct mdp5_ctl* ctl; } ;
struct mdp5_crtc {int flushed_mask; int id; } ;
struct drm_device {int dev; TYPE_1__* vblank; } ;
struct drm_crtc {int state; struct drm_device* dev; } ;
struct TYPE_2__ {int queue; } ;


 int dev_warn (int ,char*,int ) ;
 size_t drm_crtc_index (struct drm_crtc*) ;
 int drm_crtc_vblank_get (struct drm_crtc*) ;
 int drm_crtc_vblank_put (struct drm_crtc*) ;
 int mdp5_ctl_get_commit_status (struct mdp5_ctl*) ;
 int msecs_to_jiffies (int) ;
 struct mdp5_crtc* to_mdp5_crtc (struct drm_crtc*) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (int ) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void mdp5_crtc_wait_for_flush_done(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct mdp5_crtc *mdp5_crtc = to_mdp5_crtc(crtc);
 struct mdp5_crtc_state *mdp5_cstate = to_mdp5_crtc_state(crtc->state);
 struct mdp5_ctl *ctl = mdp5_cstate->ctl;
 int ret;


 if (!ctl)
  return;

 ret = drm_crtc_vblank_get(crtc);
 if (ret)
  return;

 ret = wait_event_timeout(dev->vblank[drm_crtc_index(crtc)].queue,
  ((mdp5_ctl_get_commit_status(ctl) &
  mdp5_crtc->flushed_mask) == 0),
  msecs_to_jiffies(50));
 if (ret <= 0)
  dev_warn(dev->dev, "vblank time out, crtc=%d\n", mdp5_crtc->id);

 mdp5_crtc->flushed_mask = 0;

 drm_crtc_vblank_put(crtc);
}
