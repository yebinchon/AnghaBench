
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_function {int num_of_irqs; int irq_pos; int node; int irq_mask; struct rmi_device* rmi_dev; int fd; } ;
struct rmi_driver_data {int function_list; struct rmi_function* f34_container; struct rmi_function* f01_container; int irq_count; } ;
struct device {int dummy; } ;
struct rmi_device {struct device dev; } ;
struct pdt_entry {int function_number; int interrupt_source_count; } ;


 int BITS_TO_LONGS (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RMI_DEBUG_CORE ;
 int RMI_SCAN_CONTINUE ;
 int dev_err (struct device*,char*,int) ;
 struct rmi_driver_data* dev_get_drvdata (struct device*) ;
 struct rmi_function* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int rmi_dbg (int ,struct device*,char*,int) ;
 int rmi_driver_copy_pdt_to_fd (struct pdt_entry const*,int *) ;
 int rmi_register_function (struct rmi_function*) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int rmi_create_function(struct rmi_device *rmi_dev,
          void *ctx, const struct pdt_entry *pdt)
{
 struct device *dev = &rmi_dev->dev;
 struct rmi_driver_data *data = dev_get_drvdata(dev);
 int *current_irq_count = ctx;
 struct rmi_function *fn;
 int i;
 int error;

 rmi_dbg(RMI_DEBUG_CORE, dev, "Initializing F%02X.\n",
   pdt->function_number);

 fn = kzalloc(sizeof(struct rmi_function) +
   BITS_TO_LONGS(data->irq_count) * sizeof(unsigned long),
       GFP_KERNEL);
 if (!fn) {
  dev_err(dev, "Failed to allocate memory for F%02X\n",
   pdt->function_number);
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&fn->node);
 rmi_driver_copy_pdt_to_fd(pdt, &fn->fd);

 fn->rmi_dev = rmi_dev;

 fn->num_of_irqs = pdt->interrupt_source_count;
 fn->irq_pos = *current_irq_count;
 *current_irq_count += fn->num_of_irqs;

 for (i = 0; i < fn->num_of_irqs; i++)
  set_bit(fn->irq_pos + i, fn->irq_mask);

 error = rmi_register_function(fn);
 if (error)
  return error;

 if (pdt->function_number == 0x01)
  data->f01_container = fn;
 else if (pdt->function_number == 0x34)
  data->f34_container = fn;

 list_add_tail(&fn->node, &data->function_list);

 return RMI_SCAN_CONTINUE;
}
