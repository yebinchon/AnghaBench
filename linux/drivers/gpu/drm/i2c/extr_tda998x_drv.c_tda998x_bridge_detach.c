
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda998x_priv {int connector; } ;
struct drm_bridge {int dummy; } ;


 struct tda998x_priv* bridge_to_tda998x_priv (struct drm_bridge*) ;
 int drm_connector_cleanup (int *) ;

__attribute__((used)) static void tda998x_bridge_detach(struct drm_bridge *bridge)
{
 struct tda998x_priv *priv = bridge_to_tda998x_priv(bridge);

 drm_connector_cleanup(&priv->connector);
}
