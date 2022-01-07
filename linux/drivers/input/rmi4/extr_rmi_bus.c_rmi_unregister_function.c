
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int of_node; } ;
struct TYPE_5__ {int function_number; } ;
struct rmi_function {int num_of_irqs; int * irq; TYPE_2__ dev; TYPE_1__ fd; } ;


 int RMI_DEBUG_CORE ;
 int device_del (TYPE_2__*) ;
 int irq_dispose_mapping (int ) ;
 int of_node_put (int ) ;
 int put_device (TYPE_2__*) ;
 int rmi_dbg (int ,TYPE_2__*,char*,int ) ;

void rmi_unregister_function(struct rmi_function *fn)
{
 int i;

 rmi_dbg(RMI_DEBUG_CORE, &fn->dev, "Unregistering F%02X.\n",
   fn->fd.function_number);

 device_del(&fn->dev);
 of_node_put(fn->dev.of_node);
 put_device(&fn->dev);

 for (i = 0; i < fn->num_of_irqs; i++)
  irq_dispose_mapping(fn->irq[i]);

}
