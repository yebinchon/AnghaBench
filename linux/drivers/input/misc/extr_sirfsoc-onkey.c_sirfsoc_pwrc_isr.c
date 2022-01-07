
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sirfsoc_pwrc_drvdata {int work; int input; scalar_t__ pwrc_base; } ;
typedef int irqreturn_t ;


 int EV_KEY ;
 int IRQ_HANDLED ;
 int KEY_POWER ;
 scalar_t__ PWRC_INT_STATUS ;
 int PWRC_KEY_DETECT_UP_TIME ;
 int PWRC_ON_KEY_BIT ;
 int input_event (int ,int ,int ,int) ;
 int input_sync (int ) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int sirfsoc_rtc_iobrg_readl (scalar_t__) ;
 int sirfsoc_rtc_iobrg_writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t sirfsoc_pwrc_isr(int irq, void *dev_id)
{
 struct sirfsoc_pwrc_drvdata *pwrcdrv = dev_id;
 u32 int_status;

 int_status = sirfsoc_rtc_iobrg_readl(pwrcdrv->pwrc_base +
       PWRC_INT_STATUS);
 sirfsoc_rtc_iobrg_writel(int_status & ~PWRC_ON_KEY_BIT,
     pwrcdrv->pwrc_base + PWRC_INT_STATUS);

 input_event(pwrcdrv->input, EV_KEY, KEY_POWER, 1);
 input_sync(pwrcdrv->input);
 schedule_delayed_work(&pwrcdrv->work,
         msecs_to_jiffies(PWRC_KEY_DETECT_UP_TIME));

 return IRQ_HANDLED;
}
