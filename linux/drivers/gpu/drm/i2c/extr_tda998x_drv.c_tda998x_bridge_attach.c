
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda998x_priv {int dummy; } ;
struct drm_bridge {int dev; } ;


 struct tda998x_priv* bridge_to_tda998x_priv (struct drm_bridge*) ;
 int tda998x_connector_init (struct tda998x_priv*,int ) ;

__attribute__((used)) static int tda998x_bridge_attach(struct drm_bridge *bridge)
{
 struct tda998x_priv *priv = bridge_to_tda998x_priv(bridge);

 return tda998x_connector_init(priv, bridge->dev);
}
