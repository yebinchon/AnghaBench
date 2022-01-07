
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {struct imx_mu_con_priv* con_priv; int mbox; } ;
struct imx_mu_priv {int irq; int dev; } ;
struct imx_mu_con_priv {int type; int idx; int irq_desc; int txdb_tasklet; } ;




 int IMX_MU_TYPE_TXDB ;
 int IMX_MU_xCR_GIEn (int ) ;
 int IMX_MU_xCR_RIEn (int ) ;
 int IRQF_NO_SUSPEND ;
 int IRQF_SHARED ;
 int dev_err (int ,char*,int ) ;
 int imx_mu_isr ;
 int imx_mu_txdb_tasklet ;
 int imx_mu_xcr_rmw (struct imx_mu_priv*,int ,int ) ;
 int request_irq (int ,int ,int,int ,struct mbox_chan*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 struct imx_mu_priv* to_imx_mu_priv (int ) ;

__attribute__((used)) static int imx_mu_startup(struct mbox_chan *chan)
{
 struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
 struct imx_mu_con_priv *cp = chan->con_priv;
 int ret;

 if (cp->type == IMX_MU_TYPE_TXDB) {

  tasklet_init(&cp->txdb_tasklet, imx_mu_txdb_tasklet,
        (unsigned long)cp);
  return 0;
 }

 ret = request_irq(priv->irq, imx_mu_isr, IRQF_SHARED |
     IRQF_NO_SUSPEND, cp->irq_desc, chan);
 if (ret) {
  dev_err(priv->dev,
   "Unable to acquire IRQ %d\n", priv->irq);
  return ret;
 }

 switch (cp->type) {
 case 129:
  imx_mu_xcr_rmw(priv, IMX_MU_xCR_RIEn(cp->idx), 0);
  break;
 case 128:
  imx_mu_xcr_rmw(priv, IMX_MU_xCR_GIEn(cp->idx), 0);
  break;
 default:
  break;
 }

 return 0;
}
