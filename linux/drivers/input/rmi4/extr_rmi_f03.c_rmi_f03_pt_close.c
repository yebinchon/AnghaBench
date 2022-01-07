
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct serio {struct f03_data* port_data; } ;
struct rmi_function {int irq_mask; TYPE_2__* rmi_dev; } ;
struct f03_data {struct rmi_function* fn; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* clear_irq_bits ) (TYPE_2__*,int ) ;} ;


 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static void rmi_f03_pt_close(struct serio *serio)
{
 struct f03_data *f03 = serio->port_data;
 struct rmi_function *fn = f03->fn;

 fn->rmi_dev->driver->clear_irq_bits(fn->rmi_dev, fn->irq_mask);
}
