
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {struct imx_mu_con_priv* con_priv; int mbox; } ;
struct imx_mu_priv {int irq; } ;
struct imx_mu_con_priv {scalar_t__ type; int idx; int txdb_tasklet; } ;


 scalar_t__ IMX_MU_TYPE_TXDB ;
 int IMX_MU_xCR_GIEn (int ) ;
 int IMX_MU_xCR_RIEn (int ) ;
 int IMX_MU_xCR_TIEn (int ) ;
 int free_irq (int ,struct mbox_chan*) ;
 int imx_mu_xcr_rmw (struct imx_mu_priv*,int ,int) ;
 int tasklet_kill (int *) ;
 struct imx_mu_priv* to_imx_mu_priv (int ) ;

__attribute__((used)) static void imx_mu_shutdown(struct mbox_chan *chan)
{
 struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
 struct imx_mu_con_priv *cp = chan->con_priv;

 if (cp->type == IMX_MU_TYPE_TXDB)
  tasklet_kill(&cp->txdb_tasklet);

 imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx) |
         IMX_MU_xCR_RIEn(cp->idx) | IMX_MU_xCR_GIEn(cp->idx));

 free_irq(priv->irq, chan);
}
