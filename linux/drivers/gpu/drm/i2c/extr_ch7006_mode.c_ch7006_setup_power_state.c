
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int* regs; } ;
struct ch7006_priv {int select_subconnector; int subconnector; scalar_t__ last_dpms; int chip_version; TYPE_1__ state; } ;


 size_t CH7006_POWER ;
 int CH7006_POWER_LEVEL ;
 int CH7006_POWER_RESET ;
 int CH7006_POWER_SCART ;
 int CVBS_OFF ;
 scalar_t__ DRM_MODE_DPMS_ON ;



 int FULL_POWER_OFF ;
 int NORMAL ;
 int POWER_OFF ;
 int SVIDEO_OFF ;
 int bitfs (int ,int ) ;
 struct ch7006_priv* to_ch7006_priv (struct drm_encoder*) ;

void ch7006_setup_power_state(struct drm_encoder *encoder)
{
 struct ch7006_priv *priv = to_ch7006_priv(encoder);
 uint8_t *power = &priv->state.regs[CH7006_POWER];
 int subconnector;

 subconnector = priv->select_subconnector ? priv->select_subconnector :
       priv->subconnector;

 *power = CH7006_POWER_RESET;

 if (priv->last_dpms == DRM_MODE_DPMS_ON) {
  switch (subconnector) {
  case 128:
   *power |= bitfs(CH7006_POWER_LEVEL, CVBS_OFF);
   break;
  case 130:
   *power |= bitfs(CH7006_POWER_LEVEL, SVIDEO_OFF);
   break;
  case 129:
   *power |= bitfs(CH7006_POWER_LEVEL, NORMAL) |
    CH7006_POWER_SCART;
   break;
  }

 } else {
  if (priv->chip_version >= 0x20)
   *power |= bitfs(CH7006_POWER_LEVEL, FULL_POWER_OFF);
  else
   *power |= bitfs(CH7006_POWER_LEVEL, POWER_OFF);
 }
}
