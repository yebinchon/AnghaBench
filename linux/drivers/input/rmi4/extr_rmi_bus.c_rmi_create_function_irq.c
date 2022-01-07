
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmi_function_handler {int attention; } ;
struct rmi_function {int num_of_irqs; int dev; int * irq; scalar_t__ irq_pos; int irq_mask; TYPE_1__* rmi_dev; } ;
struct rmi_driver_data {int irqdomain; } ;
struct TYPE_2__ {int dev; } ;


 int IRQF_ONESHOT ;
 int dev_err (int *,char*,int) ;
 struct rmi_driver_data* dev_get_drvdata (int *) ;
 int dev_name (int *) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int ,int ,struct rmi_function*) ;
 int handle_simple_irq ;
 int irq_create_mapping (int ,scalar_t__) ;
 int irq_set_chip_and_handler (int ,int *,int ) ;
 int irq_set_chip_data (int ,struct rmi_function*) ;
 int irq_set_nested_thread (int ,int) ;
 int rmi_irq_chip ;
 int set_bit (scalar_t__,int ) ;

__attribute__((used)) static int rmi_create_function_irq(struct rmi_function *fn,
       struct rmi_function_handler *handler)
{
 struct rmi_driver_data *drvdata = dev_get_drvdata(&fn->rmi_dev->dev);
 int i, error;

 for (i = 0; i < fn->num_of_irqs; i++) {
  set_bit(fn->irq_pos + i, fn->irq_mask);

  fn->irq[i] = irq_create_mapping(drvdata->irqdomain,
      fn->irq_pos + i);

  irq_set_chip_data(fn->irq[i], fn);
  irq_set_chip_and_handler(fn->irq[i], &rmi_irq_chip,
      handle_simple_irq);
  irq_set_nested_thread(fn->irq[i], 1);

  error = devm_request_threaded_irq(&fn->dev, fn->irq[i], ((void*)0),
     handler->attention, IRQF_ONESHOT,
     dev_name(&fn->dev), fn);
  if (error) {
   dev_err(&fn->dev, "Error %d registering IRQ\n", error);
   return error;
  }
 }

 return 0;
}
