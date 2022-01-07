
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdp5_pipeline {int dummy; } ;
struct mdp5_ctl {int dummy; } ;
struct mdp5_crtc_state {int defer_start; struct mdp5_pipeline pipeline; struct mdp5_ctl* ctl; } ;
struct drm_crtc {int name; int state; } ;


 int DBG (char*,int ,int ) ;
 int mdp5_ctl_commit (struct mdp5_ctl*,struct mdp5_pipeline*,int ,int) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (int ) ;

__attribute__((used)) static u32 crtc_flush(struct drm_crtc *crtc, u32 flush_mask)
{
 struct mdp5_crtc_state *mdp5_cstate = to_mdp5_crtc_state(crtc->state);
 struct mdp5_ctl *ctl = mdp5_cstate->ctl;
 struct mdp5_pipeline *pipeline = &mdp5_cstate->pipeline;
 bool start = !mdp5_cstate->defer_start;

 mdp5_cstate->defer_start = 0;

 DBG("%s: flush=%08x", crtc->name, flush_mask);

 return mdp5_ctl_commit(ctl, pipeline, flush_mask, start);
}
