
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_drm_private {int kms; } ;
struct mdp4_lvds_pll {TYPE_1__* dev; } ;
struct mdp4_kms {int dummy; } ;
struct TYPE_2__ {struct msm_drm_private* dev_private; } ;


 struct mdp4_kms* to_mdp4_kms (int ) ;
 int to_mdp_kms (int ) ;

__attribute__((used)) static struct mdp4_kms *get_kms(struct mdp4_lvds_pll *lvds_pll)
{
 struct msm_drm_private *priv = lvds_pll->dev->dev_private;
 return to_mdp4_kms(to_mdp_kms(priv->kms));
}
