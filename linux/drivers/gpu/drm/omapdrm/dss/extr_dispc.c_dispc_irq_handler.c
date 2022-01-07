
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int user_data; int (* user_handler ) (int,int ) ;int is_enabled; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int stub1 (int,int ) ;

__attribute__((used)) static irqreturn_t dispc_irq_handler(int irq, void *arg)
{
 struct dispc_device *dispc = arg;

 if (!dispc->is_enabled)
  return IRQ_NONE;

 return dispc->user_handler(irq, dispc->user_data);
}
