
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_mu_priv {scalar_t__ side_b; } ;


 int IMX_MU_xCR ;
 int imx_mu_write (struct imx_mu_priv*,int ,int ) ;

__attribute__((used)) static void imx_mu_init_generic(struct imx_mu_priv *priv)
{
 if (priv->side_b)
  return;


 imx_mu_write(priv, 0, IMX_MU_xCR);
}
