
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct msm_drm_private {int kms; } ;
struct mdp5_kms {int num_hwmixers; struct mdp5_hw_mixer** hwmixers; } ;
struct mdp5_hw_mixer_state {struct drm_crtc** hwmixer_to_crtc; } ;
struct mdp5_hw_mixer {size_t idx; int caps; int lm; } ;
struct mdp5_global_state {struct mdp5_hw_mixer_state hwmixer; } ;
struct drm_crtc {int name; } ;
struct drm_atomic_state {TYPE_1__* dev; } ;
struct TYPE_2__ {struct msm_drm_private* dev_private; } ;


 int DBG (char*,int ,int ) ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct mdp5_global_state*) ;
 int MDP_LM_CAP_PAIR ;
 int PTR_ERR (struct mdp5_global_state*) ;
 int get_right_pair_idx (struct mdp5_kms*,int ) ;
 struct mdp5_global_state* mdp5_get_global_state (struct drm_atomic_state*) ;
 struct mdp5_kms* to_mdp5_kms (int ) ;
 int to_mdp_kms (int ) ;

int mdp5_mixer_assign(struct drm_atomic_state *s, struct drm_crtc *crtc,
        uint32_t caps, struct mdp5_hw_mixer **mixer,
        struct mdp5_hw_mixer **r_mixer)
{
 struct msm_drm_private *priv = s->dev->dev_private;
 struct mdp5_kms *mdp5_kms = to_mdp5_kms(to_mdp_kms(priv->kms));
 struct mdp5_global_state *global_state = mdp5_get_global_state(s);
 struct mdp5_hw_mixer_state *new_state;
 int i;

 if (IS_ERR(global_state))
  return PTR_ERR(global_state);

 new_state = &global_state->hwmixer;

 for (i = 0; i < mdp5_kms->num_hwmixers; i++) {
  struct mdp5_hw_mixer *cur = mdp5_kms->hwmixers[i];
  if (new_state->hwmixer_to_crtc[cur->idx] &&
      new_state->hwmixer_to_crtc[cur->idx] != crtc)
   continue;


  if (caps & ~cur->caps)
   continue;

  if (r_mixer) {
   int pair_idx;

   pair_idx = get_right_pair_idx(mdp5_kms, cur->lm);
   if (pair_idx < 0)
    return -EINVAL;

   if (new_state->hwmixer_to_crtc[pair_idx])
    continue;

   *r_mixer = mdp5_kms->hwmixers[pair_idx];
  }
  if (!(*mixer) || cur->caps & MDP_LM_CAP_PAIR)
   *mixer = cur;
 }

 if (!(*mixer))
  return -ENOMEM;

 if (r_mixer && !(*r_mixer))
  return -ENOMEM;

 DBG("assigning Layer Mixer %d to crtc %s", (*mixer)->lm, crtc->name);

 new_state->hwmixer_to_crtc[(*mixer)->idx] = crtc;
 if (r_mixer) {
  DBG("assigning Right Layer Mixer %d to crtc %s", (*r_mixer)->lm,
      crtc->name);
  new_state->hwmixer_to_crtc[(*r_mixer)->idx] = crtc;
 }

 return 0;
}
