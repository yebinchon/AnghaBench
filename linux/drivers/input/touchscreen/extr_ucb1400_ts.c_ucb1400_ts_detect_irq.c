
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400_ts {int irq; int ac97; } ;
struct platform_device {int dev; } ;


 int ENODEV ;
 int HZ ;
 int NO_IRQ ;
 int UCB_ADC_CR ;
 int UCB_ADC_DATA ;
 int UCB_ADC_DAT_VALID ;
 int UCB_ADC_ENA ;
 int UCB_ADC_START ;
 int UCB_IE_ADC ;
 int UCB_IE_CLEAR ;
 int UCB_IE_FAL ;
 int UCB_IE_RIS ;
 int cpu_relax () ;
 int dev_err (int *,char*) ;
 int jiffies ;
 int probe_irq_off (unsigned long) ;
 unsigned long probe_irq_on () ;
 scalar_t__ time_after (int,unsigned long) ;
 int ucb1400_reg_read (int ,int ) ;
 int ucb1400_reg_write (int ,int ,int) ;

__attribute__((used)) static int ucb1400_ts_detect_irq(struct ucb1400_ts *ucb,
        struct platform_device *pdev)
{
 unsigned long mask, timeout;

 mask = probe_irq_on();


 ucb1400_reg_write(ucb->ac97, UCB_IE_RIS, UCB_IE_ADC);
 ucb1400_reg_write(ucb->ac97, UCB_IE_FAL, UCB_IE_ADC);
 ucb1400_reg_write(ucb->ac97, UCB_IE_CLEAR, 0xffff);
 ucb1400_reg_write(ucb->ac97, UCB_IE_CLEAR, 0);


 ucb1400_reg_write(ucb->ac97, UCB_ADC_CR, UCB_ADC_ENA);
 ucb1400_reg_write(ucb->ac97, UCB_ADC_CR, UCB_ADC_ENA | UCB_ADC_START);


 timeout = jiffies + HZ/2;
 while (!(ucb1400_reg_read(ucb->ac97, UCB_ADC_DATA) &
      UCB_ADC_DAT_VALID)) {
  cpu_relax();
  if (time_after(jiffies, timeout)) {
   dev_err(&pdev->dev, "timed out in IRQ probe\n");
   probe_irq_off(mask);
   return -ENODEV;
  }
 }
 ucb1400_reg_write(ucb->ac97, UCB_ADC_CR, 0);


 ucb1400_reg_write(ucb->ac97, UCB_IE_RIS, 0);
 ucb1400_reg_write(ucb->ac97, UCB_IE_FAL, 0);
 ucb1400_reg_write(ucb->ac97, UCB_IE_CLEAR, 0xffff);
 ucb1400_reg_write(ucb->ac97, UCB_IE_CLEAR, 0);


 ucb->irq = probe_irq_off(mask);
 if (ucb->irq < 0 || ucb->irq == NO_IRQ)
  return -ENODEV;

 return 0;
}
