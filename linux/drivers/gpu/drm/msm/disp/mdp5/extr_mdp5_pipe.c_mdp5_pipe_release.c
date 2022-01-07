
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_drm_private {int kms; } ;
struct mdp5_kms {scalar_t__ smp; } ;
struct mdp5_hw_pipe_state {TYPE_2__** hwpipe_to_plane; } ;
struct mdp5_hw_pipe {size_t idx; int pipe; int name; } ;
struct mdp5_global_state {int smp; struct mdp5_hw_pipe_state hwpipe; } ;
struct drm_atomic_state {TYPE_1__* dev; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {struct msm_drm_private* dev_private; } ;


 int DBG (char*,int ,...) ;
 scalar_t__ WARN_ON (int) ;
 struct mdp5_global_state* mdp5_get_global_state (struct drm_atomic_state*) ;
 int mdp5_smp_release (scalar_t__,int *,int ) ;
 struct mdp5_kms* to_mdp5_kms (int ) ;
 int to_mdp_kms (int ) ;

void mdp5_pipe_release(struct drm_atomic_state *s, struct mdp5_hw_pipe *hwpipe)
{
 struct msm_drm_private *priv = s->dev->dev_private;
 struct mdp5_kms *mdp5_kms = to_mdp5_kms(to_mdp_kms(priv->kms));
 struct mdp5_global_state *state = mdp5_get_global_state(s);
 struct mdp5_hw_pipe_state *new_state = &state->hwpipe;

 if (!hwpipe)
  return;

 if (WARN_ON(!new_state->hwpipe_to_plane[hwpipe->idx]))
  return;

 DBG("%s: release from plane %s", hwpipe->name,
  new_state->hwpipe_to_plane[hwpipe->idx]->name);

 if (mdp5_kms->smp) {
  DBG("%s: free SMP blocks", hwpipe->name);
  mdp5_smp_release(mdp5_kms->smp, &state->smp, hwpipe->pipe);
 }

 new_state->hwpipe_to_plane[hwpipe->idx] = ((void*)0);
}
