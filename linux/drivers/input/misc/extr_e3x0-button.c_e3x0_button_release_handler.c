
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_POWER ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static irqreturn_t e3x0_button_release_handler(int irq, void *data)
{
 struct input_dev *idev = data;

 input_report_key(idev, KEY_POWER, 0);
 input_sync(idev);

 return IRQ_HANDLED;
}
