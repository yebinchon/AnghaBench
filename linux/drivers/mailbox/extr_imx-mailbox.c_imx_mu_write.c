
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct imx_mu_priv {scalar_t__ base; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void imx_mu_write(struct imx_mu_priv *priv, u32 val, u32 offs)
{
 iowrite32(val, priv->base + offs);
}
