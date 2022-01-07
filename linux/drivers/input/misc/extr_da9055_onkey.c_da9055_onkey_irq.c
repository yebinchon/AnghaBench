
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9055_onkey {int input; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_POWER ;
 int da9055_onkey_query (struct da9055_onkey*) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static irqreturn_t da9055_onkey_irq(int irq, void *data)
{
 struct da9055_onkey *onkey = data;

 input_report_key(onkey->input, KEY_POWER, 1);
 input_sync(onkey->input);

 da9055_onkey_query(onkey);

 return IRQ_HANDLED;
}
