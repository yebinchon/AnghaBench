
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct edp_aux {int msg_err; int msg_comp; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int DBG (char*,int) ;
 int EDP_INTR_AUX_I2C_ERR ;
 int EDP_INTR_TRANS_STATUS ;
 int IRQ_HANDLED ;
 scalar_t__ REG_EDP_AUX_TRANS_CTRL ;
 int complete (int *) ;
 int edp_write (scalar_t__,int ) ;

irqreturn_t msm_edp_aux_irq(struct edp_aux *aux, u32 isr)
{
 if (isr & EDP_INTR_TRANS_STATUS) {
  DBG("isr=%x", isr);
  edp_write(aux->base + REG_EDP_AUX_TRANS_CTRL, 0);

  if (isr & EDP_INTR_AUX_I2C_ERR)
   aux->msg_err = 1;
  else
   aux->msg_err = 0;

  complete(&aux->msg_comp);
 }

 return IRQ_HANDLED;
}
