
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sil164_priv {scalar_t__ duallink_slave; } ;
struct drm_encoder {TYPE_2__* crtc; } ;
struct TYPE_3__ {int clock; } ;
struct TYPE_4__ {TYPE_1__ mode; } ;


 int DRM_MODE_DPMS_ON ;
 scalar_t__ drm_i2c_encoder_get_client (struct drm_encoder*) ;
 int sil164_set_power_state (scalar_t__,int) ;
 struct sil164_priv* to_sil164_priv (struct drm_encoder*) ;

__attribute__((used)) static void
sil164_encoder_dpms(struct drm_encoder *encoder, int mode)
{
 struct sil164_priv *priv = to_sil164_priv(encoder);
 bool on = (mode == DRM_MODE_DPMS_ON);
 bool duallink = (on && encoder->crtc->mode.clock > 165000);

 sil164_set_power_state(drm_i2c_encoder_get_client(encoder), on);

 if (priv->duallink_slave)
  sil164_set_power_state(priv->duallink_slave, duallink);
}
