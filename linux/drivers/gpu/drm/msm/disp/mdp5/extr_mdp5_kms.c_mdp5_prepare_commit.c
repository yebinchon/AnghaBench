
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_kms {int dummy; } ;
struct mdp5_kms {scalar_t__ smp; } ;
struct mdp5_global_state {int smp; } ;
struct drm_atomic_state {int dummy; } ;


 struct mdp5_global_state* mdp5_get_existing_global_state (struct mdp5_kms*) ;
 int mdp5_smp_prepare_commit (scalar_t__,int *) ;
 struct mdp5_kms* to_mdp5_kms (int ) ;
 int to_mdp_kms (struct msm_kms*) ;

__attribute__((used)) static void mdp5_prepare_commit(struct msm_kms *kms, struct drm_atomic_state *state)
{
 struct mdp5_kms *mdp5_kms = to_mdp5_kms(to_mdp_kms(kms));
 struct mdp5_global_state *global_state;

 global_state = mdp5_get_existing_global_state(mdp5_kms);

 if (mdp5_kms->smp)
  mdp5_smp_prepare_commit(mdp5_kms->smp, &global_state->smp);
}
