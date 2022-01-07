
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mbox_chan {struct imx_mu_con_priv* con_priv; int mbox; } ;
struct imx_mu_priv {int dev; } ;
struct imx_mu_con_priv {int type; int idx; } ;
typedef int irqreturn_t ;





 int IMX_MU_xCR ;
 scalar_t__ IMX_MU_xCR_GIEn (int ) ;
 scalar_t__ IMX_MU_xCR_RIEn (int ) ;
 scalar_t__ IMX_MU_xCR_TIEn (int ) ;
 int IMX_MU_xRRn (int ) ;
 int IMX_MU_xSR ;
 scalar_t__ IMX_MU_xSR_GIPn (int ) ;
 scalar_t__ IMX_MU_xSR_RFn (int ) ;
 scalar_t__ IMX_MU_xSR_TEn (int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_warn_ratelimited (int ,char*) ;
 scalar_t__ imx_mu_read (struct imx_mu_priv*,int ) ;
 int imx_mu_write (struct imx_mu_priv*,scalar_t__,int ) ;
 int imx_mu_xcr_rmw (struct imx_mu_priv*,int ,scalar_t__) ;
 int mbox_chan_received_data (struct mbox_chan*,void*) ;
 int mbox_chan_txdone (struct mbox_chan*,int ) ;
 struct imx_mu_priv* to_imx_mu_priv (int ) ;

__attribute__((used)) static irqreturn_t imx_mu_isr(int irq, void *p)
{
 struct mbox_chan *chan = p;
 struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
 struct imx_mu_con_priv *cp = chan->con_priv;
 u32 val, ctrl, dat;

 ctrl = imx_mu_read(priv, IMX_MU_xCR);
 val = imx_mu_read(priv, IMX_MU_xSR);

 switch (cp->type) {
 case 128:
  val &= IMX_MU_xSR_TEn(cp->idx) &
   (ctrl & IMX_MU_xCR_TIEn(cp->idx));
  break;
 case 130:
  val &= IMX_MU_xSR_RFn(cp->idx) &
   (ctrl & IMX_MU_xCR_RIEn(cp->idx));
  break;
 case 129:
  val &= IMX_MU_xSR_GIPn(cp->idx) &
   (ctrl & IMX_MU_xCR_GIEn(cp->idx));
  break;
 default:
  break;
 }

 if (!val)
  return IRQ_NONE;

 if (val == IMX_MU_xSR_TEn(cp->idx)) {
  imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx));
  mbox_chan_txdone(chan, 0);
 } else if (val == IMX_MU_xSR_RFn(cp->idx)) {
  dat = imx_mu_read(priv, IMX_MU_xRRn(cp->idx));
  mbox_chan_received_data(chan, (void *)&dat);
 } else if (val == IMX_MU_xSR_GIPn(cp->idx)) {
  imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), IMX_MU_xSR);
  mbox_chan_received_data(chan, ((void*)0));
 } else {
  dev_warn_ratelimited(priv->dev, "Not handled interrupt\n");
  return IRQ_NONE;
 }

 return IRQ_HANDLED;
}
