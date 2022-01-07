
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dev; } ;
struct drm_connector {int dummy; } ;
struct ch7006_priv {int scale; int norm; } ;
struct TYPE_2__ {scalar_t__ clock; } ;
struct ch7006_mode {int valid_scales; int valid_norms; TYPE_1__ mode; } ;


 struct ch7006_mode* ch7006_modes ;
 int drm_mode_duplicate (int ,TYPE_1__*) ;
 int drm_mode_probed_add (struct drm_connector*,int ) ;
 struct ch7006_priv* to_ch7006_priv (struct drm_encoder*) ;

__attribute__((used)) static int ch7006_encoder_get_modes(struct drm_encoder *encoder,
        struct drm_connector *connector)
{
 struct ch7006_priv *priv = to_ch7006_priv(encoder);
 const struct ch7006_mode *mode;
 int n = 0;

 for (mode = ch7006_modes; mode->mode.clock; mode++) {
  if (~mode->valid_scales & 1<<priv->scale ||
      ~mode->valid_norms & 1<<priv->norm)
   continue;

  drm_mode_probed_add(connector,
    drm_mode_duplicate(encoder->dev, &mode->mode));

  n++;
 }

 return n;
}
