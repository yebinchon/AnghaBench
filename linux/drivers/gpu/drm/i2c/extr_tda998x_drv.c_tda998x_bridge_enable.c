
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda998x_priv {int is_on; int vip_cntrl_0; int vip_cntrl_1; int vip_cntrl_2; } ;
struct drm_bridge {int dummy; } ;


 int REG_ENA_VP_0 ;
 int REG_ENA_VP_1 ;
 int REG_ENA_VP_2 ;
 int REG_VIP_CNTRL_0 ;
 int REG_VIP_CNTRL_1 ;
 int REG_VIP_CNTRL_2 ;
 struct tda998x_priv* bridge_to_tda998x_priv (struct drm_bridge*) ;
 int reg_write (struct tda998x_priv*,int ,int) ;

__attribute__((used)) static void tda998x_bridge_enable(struct drm_bridge *bridge)
{
 struct tda998x_priv *priv = bridge_to_tda998x_priv(bridge);

 if (!priv->is_on) {

  reg_write(priv, REG_ENA_VP_0, 0xff);
  reg_write(priv, REG_ENA_VP_1, 0xff);
  reg_write(priv, REG_ENA_VP_2, 0xff);

  reg_write(priv, REG_VIP_CNTRL_0, priv->vip_cntrl_0);
  reg_write(priv, REG_VIP_CNTRL_1, priv->vip_cntrl_1);
  reg_write(priv, REG_VIP_CNTRL_2, priv->vip_cntrl_2);

  priv->is_on = 1;
 }
}
