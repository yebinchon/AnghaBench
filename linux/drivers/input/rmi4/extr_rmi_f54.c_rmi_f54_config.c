
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmi_function {int irq_mask; TYPE_1__* rmi_dev; } ;
struct rmi_driver {int (* clear_irq_bits ) (TYPE_1__*,int ) ;} ;
struct TYPE_2__ {struct rmi_driver* driver; } ;


 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int rmi_f54_config(struct rmi_function *fn)
{
 struct rmi_driver *drv = fn->rmi_dev->driver;

 drv->clear_irq_bits(fn->rmi_dev, fn->irq_mask);

 return 0;
}
