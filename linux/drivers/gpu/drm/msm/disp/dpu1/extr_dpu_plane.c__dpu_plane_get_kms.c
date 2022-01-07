
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_drm_private {int kms; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct dpu_kms {int dummy; } ;
struct TYPE_2__ {struct msm_drm_private* dev_private; } ;


 struct dpu_kms* to_dpu_kms (int ) ;

__attribute__((used)) static struct dpu_kms *_dpu_plane_get_kms(struct drm_plane *plane)
{
 struct msm_drm_private *priv = plane->dev->dev_private;

 return to_dpu_kms(priv->kms);
}
