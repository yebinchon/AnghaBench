
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_kms {int dummy; } ;
struct mdp4_kms {int dummy; } ;


 int mdp4_enable (struct mdp4_kms*) ;
 struct mdp4_kms* to_mdp4_kms (int ) ;
 int to_mdp_kms (struct msm_kms*) ;

__attribute__((used)) static void mdp4_enable_commit(struct msm_kms *kms)
{
 struct mdp4_kms *mdp4_kms = to_mdp4_kms(to_mdp_kms(kms));
 mdp4_enable(mdp4_kms);
}
