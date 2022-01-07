
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma3000_accl_data {int input_dev; int irq; } ;


 int free_irq (int ,struct cma3000_accl_data*) ;
 int input_unregister_device (int ) ;
 int kfree (struct cma3000_accl_data*) ;

void cma3000_exit(struct cma3000_accl_data *data)
{
 free_irq(data->irq, data);
 input_unregister_device(data->input_dev);
 kfree(data);
}
