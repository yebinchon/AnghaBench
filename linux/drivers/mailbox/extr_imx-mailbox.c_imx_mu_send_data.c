
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mbox_chan {struct imx_mu_con_priv* con_priv; int mbox; } ;
struct imx_mu_priv {int dev; } ;
struct imx_mu_con_priv {int type; int txdb_tasklet; int idx; } ;


 int EINVAL ;


 int IMX_MU_xCR_GIRn (int ) ;
 int IMX_MU_xCR_TIEn (int ) ;
 int IMX_MU_xTRn (int ) ;
 int dev_warn_ratelimited (int ,char*,int) ;
 int imx_mu_write (struct imx_mu_priv*,int ,int ) ;
 int imx_mu_xcr_rmw (struct imx_mu_priv*,int ,int ) ;
 int tasklet_schedule (int *) ;
 struct imx_mu_priv* to_imx_mu_priv (int ) ;

__attribute__((used)) static int imx_mu_send_data(struct mbox_chan *chan, void *data)
{
 struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
 struct imx_mu_con_priv *cp = chan->con_priv;
 u32 *arg = data;

 switch (cp->type) {
 case 129:
  imx_mu_write(priv, *arg, IMX_MU_xTRn(cp->idx));
  imx_mu_xcr_rmw(priv, IMX_MU_xCR_TIEn(cp->idx), 0);
  break;
 case 128:
  imx_mu_xcr_rmw(priv, IMX_MU_xCR_GIRn(cp->idx), 0);
  tasklet_schedule(&cp->txdb_tasklet);
  break;
 default:
  dev_warn_ratelimited(priv->dev, "Send data on wrong channel type: %d\n", cp->type);
  return -EINVAL;
 }

 return 0;
}
