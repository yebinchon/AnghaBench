
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gp2a_data {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int gp2a_report (struct gp2a_data*) ;

__attribute__((used)) static irqreturn_t gp2a_irq(int irq, void *handle)
{
 struct gp2a_data *dt = handle;

 gp2a_report(dt);

 return IRQ_HANDLED;
}
