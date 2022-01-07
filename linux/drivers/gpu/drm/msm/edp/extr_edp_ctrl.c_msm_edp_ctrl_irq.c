
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct edp_ctrl {int aux; int idle_comp; int irq_lock; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int DBG (char*,...) ;
 int EDP_INTERRUPT_REG_1_HPD ;
 int EDP_INTERRUPT_REG_2_IDLE_PATTERNs_SENT ;
 int EDP_INTERRUPT_REG_2_READY_FOR_VIDEO ;
 int EDP_INTR_MASK1 ;
 int EDP_INTR_MASK2 ;
 int EDP_INTR_STATUS1 ;
 int EDP_INTR_STATUS2 ;
 int IRQ_HANDLED ;
 scalar_t__ REG_EDP_INTERRUPT_REG_1 ;
 scalar_t__ REG_EDP_INTERRUPT_REG_2 ;
 int complete (int *) ;
 int edp_read (scalar_t__) ;
 int edp_write (scalar_t__,int) ;
 int msm_edp_aux_irq (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

irqreturn_t msm_edp_ctrl_irq(struct edp_ctrl *ctrl)
{
 u32 isr1, isr2, mask1, mask2;
 u32 ack;

 DBG("");
 spin_lock(&ctrl->irq_lock);
 isr1 = edp_read(ctrl->base + REG_EDP_INTERRUPT_REG_1);
 isr2 = edp_read(ctrl->base + REG_EDP_INTERRUPT_REG_2);

 mask1 = isr1 & EDP_INTR_MASK1;
 mask2 = isr2 & EDP_INTR_MASK2;

 isr1 &= ~mask1;
 isr2 &= ~mask2;

 DBG("isr=%x mask=%x isr2=%x mask2=%x",
   isr1, mask1, isr2, mask2);

 ack = isr1 & EDP_INTR_STATUS1;
 ack <<= 1;
 ack |= mask1;
 edp_write(ctrl->base + REG_EDP_INTERRUPT_REG_1, ack);

 ack = isr2 & EDP_INTR_STATUS2;
 ack <<= 1;
 ack |= mask2;
 edp_write(ctrl->base + REG_EDP_INTERRUPT_REG_2, ack);
 spin_unlock(&ctrl->irq_lock);

 if (isr1 & EDP_INTERRUPT_REG_1_HPD)
  DBG("edp_hpd");

 if (isr2 & EDP_INTERRUPT_REG_2_READY_FOR_VIDEO)
  DBG("edp_video_ready");

 if (isr2 & EDP_INTERRUPT_REG_2_IDLE_PATTERNs_SENT) {
  DBG("idle_patterns_sent");
  complete(&ctrl->idle_comp);
 }

 msm_edp_aux_irq(ctrl->aux, isr1);

 return IRQ_HANDLED;
}
