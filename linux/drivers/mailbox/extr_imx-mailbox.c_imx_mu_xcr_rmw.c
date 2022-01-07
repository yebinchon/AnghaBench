
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_mu_priv {int xcr_lock; } ;


 int IMX_MU_xCR ;
 int imx_mu_read (struct imx_mu_priv*,int ) ;
 int imx_mu_write (struct imx_mu_priv*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 imx_mu_xcr_rmw(struct imx_mu_priv *priv, u32 set, u32 clr)
{
 unsigned long flags;
 u32 val;

 spin_lock_irqsave(&priv->xcr_lock, flags);
 val = imx_mu_read(priv, IMX_MU_xCR);
 val &= ~clr;
 val |= set;
 imx_mu_write(priv, val, IMX_MU_xCR);
 spin_unlock_irqrestore(&priv->xcr_lock, flags);

 return val;
}
