
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_POWER ;
 int MAX_HELD_TIME ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int pm_wakeup_event (int ,int ) ;

__attribute__((used)) static irqreturn_t hi65xx_power_press_isr(int irq, void *q)
{
 struct input_dev *input = q;

 pm_wakeup_event(input->dev.parent, MAX_HELD_TIME);
 input_report_key(input, KEY_POWER, 1);
 input_sync(input);

 return IRQ_HANDLED;
}
