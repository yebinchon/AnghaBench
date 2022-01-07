
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mdp5_pipeline {TYPE_2__* r_mixer; TYPE_1__* mixer; } ;
struct mdp5_kms {int caps; } ;
struct mdp5_crtc_state {char* cmd_mode; scalar_t__ ctl; struct mdp5_pipeline pipeline; } ;
struct drm_printer {int dummy; } ;
struct drm_crtc_state {int crtc; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* name; } ;


 int MDP_CAP_SRC_SPLIT ;
 scalar_t__ WARN_ON (int) ;
 int drm_printf (struct drm_printer*,char*,char*) ;
 struct mdp5_kms* get_kms (int ) ;
 char* mdp5_ctl_get_ctl_id (scalar_t__) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (struct drm_crtc_state const*) ;

__attribute__((used)) static void
mdp5_crtc_atomic_print_state(struct drm_printer *p,
        const struct drm_crtc_state *state)
{
 struct mdp5_crtc_state *mdp5_cstate = to_mdp5_crtc_state(state);
 struct mdp5_pipeline *pipeline = &mdp5_cstate->pipeline;
 struct mdp5_kms *mdp5_kms = get_kms(state->crtc);

 if (WARN_ON(!pipeline))
  return;

 if (mdp5_cstate->ctl)
  drm_printf(p, "\tctl=%d\n", mdp5_ctl_get_ctl_id(mdp5_cstate->ctl));

 drm_printf(p, "\thwmixer=%s\n", pipeline->mixer ?
   pipeline->mixer->name : "(null)");

 if (mdp5_kms->caps & MDP_CAP_SRC_SPLIT)
  drm_printf(p, "\tright hwmixer=%s\n", pipeline->r_mixer ?
      pipeline->r_mixer->name : "(null)");

 drm_printf(p, "\tcmd_mode=%d\n", mdp5_cstate->cmd_mode);
}
