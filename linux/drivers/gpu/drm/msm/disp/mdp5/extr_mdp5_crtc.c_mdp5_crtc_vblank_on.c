
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mdp5_interface {scalar_t__ mode; } ;
struct TYPE_2__ {struct mdp5_interface* intf; } ;
struct mdp5_crtc_state {TYPE_1__ pipeline; } ;
struct drm_crtc {int state; } ;


 scalar_t__ MDP5_INTF_DSI_MODE_COMMAND ;
 int drm_crtc_set_max_vblank_count (struct drm_crtc*,int) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (int ) ;

__attribute__((used)) static void mdp5_crtc_vblank_on(struct drm_crtc *crtc)
{
 struct mdp5_crtc_state *mdp5_cstate = to_mdp5_crtc_state(crtc->state);
 struct mdp5_interface *intf = mdp5_cstate->pipeline.intf;
 u32 count;

 count = intf->mode == MDP5_INTF_DSI_MODE_COMMAND ? 0 : 0xffffffff;
 drm_crtc_set_max_vblank_count(crtc, count);

 drm_crtc_vblank_on(crtc);
}
