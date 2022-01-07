
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_kms {int dummy; } ;
struct mdp5_kms {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_get_sync (int *) ;
 struct mdp5_kms* to_mdp5_kms (int ) ;
 int to_mdp_kms (struct msm_kms*) ;

__attribute__((used)) static void mdp5_enable_commit(struct msm_kms *kms)
{
 struct mdp5_kms *mdp5_kms = to_mdp5_kms(to_mdp_kms(kms));
 pm_runtime_get_sync(&mdp5_kms->pdev->dev);
}
