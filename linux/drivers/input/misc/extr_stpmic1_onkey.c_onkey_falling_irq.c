
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stpmic1_onkey {struct input_dev* input_dev; } ;
struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_POWER ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int pm_wakeup_event (int ,int ) ;

__attribute__((used)) static irqreturn_t onkey_falling_irq(int irq, void *ponkey)
{
 struct stpmic1_onkey *onkey = ponkey;
 struct input_dev *input_dev = onkey->input_dev;

 input_report_key(input_dev, KEY_POWER, 1);
 pm_wakeup_event(input_dev->dev.parent, 0);
 input_sync(input_dev);

 return IRQ_HANDLED;
}
