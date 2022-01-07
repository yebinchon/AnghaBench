
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rmi_function {int irq_mask; TYPE_2__* rmi_dev; int dev; } ;
struct f03_data {int serio_registered; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* set_irq_bits ) (TYPE_2__*,int ) ;} ;


 struct f03_data* dev_get_drvdata (int *) ;
 int rmi_f03_register_pt (struct f03_data*) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static int rmi_f03_config(struct rmi_function *fn)
{
 struct f03_data *f03 = dev_get_drvdata(&fn->dev);
 int error;

 if (!f03->serio_registered) {
  error = rmi_f03_register_pt(f03);
  if (error)
   return error;

  f03->serio_registered = 1;
 } else {




  fn->rmi_dev->driver->set_irq_bits(fn->rmi_dev, fn->irq_mask);
 }

 return 0;
}
