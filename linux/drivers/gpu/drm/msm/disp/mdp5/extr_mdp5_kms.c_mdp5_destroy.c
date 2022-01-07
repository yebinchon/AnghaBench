
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mdp5_kms {int num_intfs; int glob_state_lock; int glob_state; scalar_t__ rpm_enabled; int * intfs; scalar_t__ cfg; scalar_t__ smp; scalar_t__ ctlm; } ;


 int drm_atomic_private_obj_fini (int *) ;
 int drm_modeset_lock_fini (int *) ;
 int kfree (int ) ;
 int mdp5_cfg_destroy (scalar_t__) ;
 int mdp5_ctlm_destroy (scalar_t__) ;
 int mdp5_smp_destroy (scalar_t__) ;
 struct mdp5_kms* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static void mdp5_destroy(struct platform_device *pdev)
{
 struct mdp5_kms *mdp5_kms = platform_get_drvdata(pdev);
 int i;

 if (mdp5_kms->ctlm)
  mdp5_ctlm_destroy(mdp5_kms->ctlm);
 if (mdp5_kms->smp)
  mdp5_smp_destroy(mdp5_kms->smp);
 if (mdp5_kms->cfg)
  mdp5_cfg_destroy(mdp5_kms->cfg);

 for (i = 0; i < mdp5_kms->num_intfs; i++)
  kfree(mdp5_kms->intfs[i]);

 if (mdp5_kms->rpm_enabled)
  pm_runtime_disable(&pdev->dev);

 drm_atomic_private_obj_fini(&mdp5_kms->glob_state);
 drm_modeset_lock_fini(&mdp5_kms->glob_state_lock);
}
