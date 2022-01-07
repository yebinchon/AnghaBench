
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ r_mixer; } ;
struct mdp5_crtc_state {TYPE_1__ pipeline; } ;
struct drm_plane_state {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef enum mdp_mixer_stage_id { ____Placeholder_mdp_mixer_stage_id } mdp_mixer_stage_id ;


 int STAGE0 ;
 int STAGE_BASE ;
 int is_fullscreen (struct drm_crtc_state*,struct drm_plane_state*) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (struct drm_crtc_state*) ;

__attribute__((used)) static enum mdp_mixer_stage_id get_start_stage(struct drm_crtc *crtc,
     struct drm_crtc_state *new_crtc_state,
     struct drm_plane_state *bpstate)
{
 struct mdp5_crtc_state *mdp5_cstate =
   to_mdp5_crtc_state(new_crtc_state);





 if (mdp5_cstate->pipeline.r_mixer)
  return STAGE0;




 if (!is_fullscreen(new_crtc_state, bpstate))
  return STAGE0;

 return STAGE_BASE;
}
