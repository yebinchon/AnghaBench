
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_drm_private {int num_encoders; struct drm_encoder** encoders; } ;
struct mdp5_kms {struct drm_device* dev; } ;
struct mdp5_interface {int dummy; } ;
struct mdp5_ctl {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dev; struct msm_drm_private* dev_private; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 scalar_t__ IS_ERR (struct drm_encoder*) ;
 struct drm_encoder* mdp5_encoder_init (struct drm_device*,struct mdp5_interface*,struct mdp5_ctl*) ;

__attribute__((used)) static struct drm_encoder *construct_encoder(struct mdp5_kms *mdp5_kms,
          struct mdp5_interface *intf,
          struct mdp5_ctl *ctl)
{
 struct drm_device *dev = mdp5_kms->dev;
 struct msm_drm_private *priv = dev->dev_private;
 struct drm_encoder *encoder;

 encoder = mdp5_encoder_init(dev, intf, ctl);
 if (IS_ERR(encoder)) {
  DRM_DEV_ERROR(dev->dev, "failed to construct encoder\n");
  return encoder;
 }

 priv->encoders[priv->num_encoders++] = encoder;

 return encoder;
}
