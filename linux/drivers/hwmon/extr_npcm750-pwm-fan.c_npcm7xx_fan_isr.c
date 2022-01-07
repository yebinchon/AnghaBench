
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct npcm7xx_pwm_fan_data {int* fan_irq; int * fan_lock; int fan_base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int NPCM7XX_FAN_CMPA ;
 int NPCM7XX_FAN_CMPB ;
 int NPCM7XX_FAN_REG_TICTRL (int ,int) ;
 scalar_t__ ioread8 (int ) ;
 int npcm7xx_check_cmp (struct npcm7xx_pwm_fan_data*,int,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t npcm7xx_fan_isr(int irq, void *dev_id)
{
 struct npcm7xx_pwm_fan_data *data = dev_id;
 unsigned long flags;
 int module;
 u8 flag;

 module = irq - data->fan_irq[0];
 spin_lock_irqsave(&data->fan_lock[module], flags);

 flag = ioread8(NPCM7XX_FAN_REG_TICTRL(data->fan_base, module));
 if (flag > 0) {
  npcm7xx_check_cmp(data, module, NPCM7XX_FAN_CMPA, flag);
  npcm7xx_check_cmp(data, module, NPCM7XX_FAN_CMPB, flag);
  spin_unlock_irqrestore(&data->fan_lock[module], flags);
  return IRQ_HANDLED;
 }

 spin_unlock_irqrestore(&data->fan_lock[module], flags);

 return IRQ_NONE;
}
