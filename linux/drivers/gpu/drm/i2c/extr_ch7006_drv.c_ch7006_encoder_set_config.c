
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct ch7006_encoder_params {int dummy; } ;
struct ch7006_priv {struct ch7006_encoder_params params; } ;


 struct ch7006_priv* to_ch7006_priv (struct drm_encoder*) ;

__attribute__((used)) static void ch7006_encoder_set_config(struct drm_encoder *encoder,
          void *params)
{
 struct ch7006_priv *priv = to_ch7006_priv(encoder);

 priv->params = *(struct ch7006_encoder_params *)params;
}
