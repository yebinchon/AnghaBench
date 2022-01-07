
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda998x_priv {int is_on; } ;
struct drm_bridge {int dummy; } ;


 int REG_ENA_VP_0 ;
 int REG_ENA_VP_1 ;
 int REG_ENA_VP_2 ;
 struct tda998x_priv* bridge_to_tda998x_priv (struct drm_bridge*) ;
 int reg_write (struct tda998x_priv*,int ,int) ;

__attribute__((used)) static void tda998x_bridge_disable(struct drm_bridge *bridge)
{
 struct tda998x_priv *priv = bridge_to_tda998x_priv(bridge);

 if (priv->is_on) {

  reg_write(priv, REG_ENA_VP_0, 0x00);
  reg_write(priv, REG_ENA_VP_1, 0x00);
  reg_write(priv, REG_ENA_VP_2, 0x00);

  priv->is_on = 0;
 }
}
