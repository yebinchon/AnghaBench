
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_drm_private {int kms; } ;
struct mdp5_kms {int glob_state; int glob_state_lock; } ;
struct mdp5_global_state {int dummy; } ;
struct drm_private_state {int dummy; } ;
struct drm_atomic_state {int acquire_ctx; TYPE_1__* dev; } ;
struct TYPE_2__ {struct msm_drm_private* dev_private; } ;


 struct mdp5_global_state* ERR_CAST (struct drm_private_state*) ;
 struct mdp5_global_state* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct drm_private_state*) ;
 struct drm_private_state* drm_atomic_get_private_obj_state (struct drm_atomic_state*,int *) ;
 int drm_modeset_lock (int *,int ) ;
 struct mdp5_global_state* to_mdp5_global_state (struct drm_private_state*) ;
 struct mdp5_kms* to_mdp5_kms (int ) ;
 int to_mdp_kms (int ) ;

struct mdp5_global_state *mdp5_get_global_state(struct drm_atomic_state *s)
{
 struct msm_drm_private *priv = s->dev->dev_private;
 struct mdp5_kms *mdp5_kms = to_mdp5_kms(to_mdp_kms(priv->kms));
 struct drm_private_state *priv_state;
 int ret;

 ret = drm_modeset_lock(&mdp5_kms->glob_state_lock, s->acquire_ctx);
 if (ret)
  return ERR_PTR(ret);

 priv_state = drm_atomic_get_private_obj_state(s, &mdp5_kms->glob_state);
 if (IS_ERR(priv_state))
  return ERR_CAST(priv_state);

 return to_mdp5_global_state(priv_state);
}
