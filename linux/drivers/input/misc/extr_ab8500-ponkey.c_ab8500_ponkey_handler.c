
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_ponkey {int irq_dbf; int irq_dbr; int idev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_POWER ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static irqreturn_t ab8500_ponkey_handler(int irq, void *data)
{
 struct ab8500_ponkey *ponkey = data;

 if (irq == ponkey->irq_dbf)
  input_report_key(ponkey->idev, KEY_POWER, 1);
 else if (irq == ponkey->irq_dbr)
  input_report_key(ponkey->idev, KEY_POWER, 0);

 input_sync(ponkey->idev);

 return IRQ_HANDLED;
}
