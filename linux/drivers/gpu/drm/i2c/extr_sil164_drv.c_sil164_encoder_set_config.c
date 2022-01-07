
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sil164_encoder_params {int dummy; } ;
struct sil164_priv {struct sil164_encoder_params config; } ;
struct drm_encoder {int dummy; } ;


 struct sil164_priv* to_sil164_priv (struct drm_encoder*) ;

__attribute__((used)) static void
sil164_encoder_set_config(struct drm_encoder *encoder, void *params)
{
 struct sil164_priv *priv = to_sil164_priv(encoder);

 priv->config = *(struct sil164_encoder_params *)params;
}
