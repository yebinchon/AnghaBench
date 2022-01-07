
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
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int pm_wakeup_event (int ,int ) ;

__attribute__((used)) static irqreturn_t e3x0_button_press_handler(int irq, void *data)
{
 struct input_dev *idev = data;

 input_report_key(idev, KEY_POWER, 1);
 pm_wakeup_event(idev->dev.parent, 0);
 input_sync(idev);

 return IRQ_HANDLED;
}
