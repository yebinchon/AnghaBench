
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_drm_private {int kms; } ;
struct mdp5_smp {TYPE_1__* dev; } ;
struct mdp5_kms {int dummy; } ;
struct TYPE_2__ {struct msm_drm_private* dev_private; } ;


 struct mdp5_kms* to_mdp5_kms (int ) ;
 int to_mdp_kms (int ) ;

__attribute__((used)) static inline
struct mdp5_kms *get_kms(struct mdp5_smp *smp)
{
 struct msm_drm_private *priv = smp->dev->dev_private;

 return to_mdp5_kms(to_mdp_kms(priv->kms));
}
