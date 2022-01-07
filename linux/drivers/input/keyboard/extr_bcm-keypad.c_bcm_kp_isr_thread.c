
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_kp {int kpcr; int input_dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KPCR_MODE_MASK ;
 int KPCR_MODE_SHIFT ;
 int bcm_kp_report_keys (struct bcm_kp*,int,int) ;
 int input_sync (int ) ;

__attribute__((used)) static irqreturn_t bcm_kp_isr_thread(int irq, void *dev_id)
{
 struct bcm_kp *kp = dev_id;
 int pull_mode = (kp->kpcr >> KPCR_MODE_SHIFT) & KPCR_MODE_MASK;
 int reg_num;

 for (reg_num = 0; reg_num <= 1; reg_num++)
  bcm_kp_report_keys(kp, reg_num, pull_mode);

 input_sync(kp->input_dev);

 return IRQ_HANDLED;
}
