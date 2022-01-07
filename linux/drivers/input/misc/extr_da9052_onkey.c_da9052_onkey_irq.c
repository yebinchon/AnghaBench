
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052_onkey {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int da9052_onkey_query (struct da9052_onkey*) ;

__attribute__((used)) static irqreturn_t da9052_onkey_irq(int irq, void *data)
{
 struct da9052_onkey *onkey = data;

 da9052_onkey_query(onkey);

 return IRQ_HANDLED;
}
