
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77650_onkey {int input; int code; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static irqreturn_t max77650_onkey_rising(int irq, void *data)
{
 struct max77650_onkey *onkey = data;

 input_report_key(onkey->input, onkey->code, 1);
 input_sync(onkey->input);

 return IRQ_HANDLED;
}
