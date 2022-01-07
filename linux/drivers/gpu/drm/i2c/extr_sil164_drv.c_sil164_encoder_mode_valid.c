
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sil164_priv {int duallink_slave; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int clock; } ;


 int MODE_CLOCK_HIGH ;
 int MODE_CLOCK_LOW ;
 int MODE_OK ;
 struct sil164_priv* to_sil164_priv (struct drm_encoder*) ;

__attribute__((used)) static int
sil164_encoder_mode_valid(struct drm_encoder *encoder,
     struct drm_display_mode *mode)
{
 struct sil164_priv *priv = to_sil164_priv(encoder);

 if (mode->clock < 32000)
  return MODE_CLOCK_LOW;

 if (mode->clock > 330000 ||
     (mode->clock > 165000 && !priv->duallink_slave))
  return MODE_CLOCK_HIGH;

 return MODE_OK;
}
