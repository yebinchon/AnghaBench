
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct axp20x_pek {int irq_dbf; int irq_dbr; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_POWER ;
 struct axp20x_pek* input_get_drvdata (struct input_dev*) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static irqreturn_t axp20x_pek_irq(int irq, void *pwr)
{
 struct input_dev *idev = pwr;
 struct axp20x_pek *axp20x_pek = input_get_drvdata(idev);





 if (irq == axp20x_pek->irq_dbf)
  input_report_key(idev, KEY_POWER, 1);
 else if (irq == axp20x_pek->irq_dbr)
  input_report_key(idev, KEY_POWER, 0);

 input_sync(idev);

 return IRQ_HANDLED;
}
