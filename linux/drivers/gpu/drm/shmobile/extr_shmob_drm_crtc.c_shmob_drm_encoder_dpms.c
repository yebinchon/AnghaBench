
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shmob_drm_encoder {int dpms; } ;
struct shmob_drm_connector {int dummy; } ;
struct shmob_drm_device {struct shmob_drm_connector connector; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct TYPE_2__ {struct shmob_drm_device* dev_private; } ;


 int shmob_drm_backlight_dpms (struct shmob_drm_connector*,int) ;
 struct shmob_drm_encoder* to_shmob_encoder (struct drm_encoder*) ;

__attribute__((used)) static void shmob_drm_encoder_dpms(struct drm_encoder *encoder, int mode)
{
 struct shmob_drm_encoder *senc = to_shmob_encoder(encoder);
 struct shmob_drm_device *sdev = encoder->dev->dev_private;
 struct shmob_drm_connector *scon = &sdev->connector;

 if (senc->dpms == mode)
  return;

 shmob_drm_backlight_dpms(scon, mode);

 senc->dpms = mode;
}
