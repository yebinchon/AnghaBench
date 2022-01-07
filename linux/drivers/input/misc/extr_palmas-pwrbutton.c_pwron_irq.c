
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct palmas_pwron {int input_work; struct input_dev* input_dev; } ;
struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_POWER ;
 int PALMAS_PWR_KEY_Q_TIME_MS ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int mod_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int ) ;
 int pm_wakeup_event (int ,int ) ;
 int system_wq ;

__attribute__((used)) static irqreturn_t pwron_irq(int irq, void *palmas_pwron)
{
 struct palmas_pwron *pwron = palmas_pwron;
 struct input_dev *input_dev = pwron->input_dev;

 input_report_key(input_dev, KEY_POWER, 1);
 pm_wakeup_event(input_dev->dev.parent, 0);
 input_sync(input_dev);

 mod_delayed_work(system_wq, &pwron->input_work,
    msecs_to_jiffies(PALMAS_PWR_KEY_Q_TIME_MS));

 return IRQ_HANDLED;
}
