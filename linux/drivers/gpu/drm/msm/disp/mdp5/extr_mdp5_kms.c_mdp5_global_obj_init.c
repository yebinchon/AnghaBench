
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_kms {int glob_state; int dev; int glob_state_lock; } ;
struct mdp5_global_state {int base; struct mdp5_kms* mdp5_kms; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_atomic_private_obj_init (int ,int *,int *,int *) ;
 int drm_modeset_lock_init (int *) ;
 struct mdp5_global_state* kzalloc (int,int ) ;
 int mdp5_global_state_funcs ;

__attribute__((used)) static int mdp5_global_obj_init(struct mdp5_kms *mdp5_kms)
{
 struct mdp5_global_state *state;

 drm_modeset_lock_init(&mdp5_kms->glob_state_lock);

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;

 state->mdp5_kms = mdp5_kms;

 drm_atomic_private_obj_init(mdp5_kms->dev, &mdp5_kms->glob_state,
        &state->base,
        &mdp5_global_state_funcs);
 return 0;
}
