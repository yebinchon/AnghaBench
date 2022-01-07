
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_drm_private {int kms; } ;
struct mdp5_kms {int dummy; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct TYPE_2__ {struct msm_drm_private* dev_private; } ;


 struct mdp5_kms* to_mdp5_kms (int ) ;
 int to_mdp_kms (int ) ;

__attribute__((used)) static struct mdp5_kms *get_kms(struct drm_plane *plane)
{
 struct msm_drm_private *priv = plane->dev->dev_private;
 return to_mdp5_kms(to_mdp_kms(priv->kms));
}
