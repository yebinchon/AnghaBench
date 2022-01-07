
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

__attribute__((used)) static irqreturn_t pwrkey_release_irq(int irq, void *_pwr)
{
 struct input_dev *pwr = _pwr;

 input_report_key(pwr, KEY_POWER, 0);
 input_sync(pwr);

 return IRQ_HANDLED;
}
