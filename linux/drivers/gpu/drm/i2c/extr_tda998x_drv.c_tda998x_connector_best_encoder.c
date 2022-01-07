
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_encoder* encoder; } ;
struct tda998x_priv {TYPE_1__ bridge; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;


 struct tda998x_priv* conn_to_tda998x_priv (struct drm_connector*) ;

__attribute__((used)) static struct drm_encoder *
tda998x_connector_best_encoder(struct drm_connector *connector)
{
 struct tda998x_priv *priv = conn_to_tda998x_priv(connector);

 return priv->bridge.encoder;
}
