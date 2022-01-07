
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dev; } ;
struct ch7006_priv {int scale_property; } ;
struct TYPE_2__ {int * slave_priv; } ;


 int drm_i2c_encoder_destroy (struct drm_encoder*) ;
 int drm_property_destroy (int ,int ) ;
 int kfree (struct ch7006_priv*) ;
 struct ch7006_priv* to_ch7006_priv (struct drm_encoder*) ;
 TYPE_1__* to_encoder_slave (struct drm_encoder*) ;

__attribute__((used)) static void ch7006_encoder_destroy(struct drm_encoder *encoder)
{
 struct ch7006_priv *priv = to_ch7006_priv(encoder);

 drm_property_destroy(encoder->dev, priv->scale_property);

 kfree(priv);
 to_encoder_slave(encoder)->slave_priv = ((void*)0);

 drm_i2c_encoder_destroy(encoder);
}
