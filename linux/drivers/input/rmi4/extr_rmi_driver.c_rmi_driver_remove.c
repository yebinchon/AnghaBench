
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_driver_data {int * irqdomain; } ;
struct rmi_device {int dev; } ;
struct device {int dummy; } ;


 struct rmi_driver_data* dev_get_drvdata (int *) ;
 int irq_domain_remove (int *) ;
 int rmi_disable_irq (struct rmi_device*,int) ;
 int rmi_f34_remove_sysfs (struct rmi_device*) ;
 int rmi_free_function_list (struct rmi_device*) ;
 struct rmi_device* to_rmi_device (struct device*) ;

__attribute__((used)) static int rmi_driver_remove(struct device *dev)
{
 struct rmi_device *rmi_dev = to_rmi_device(dev);
 struct rmi_driver_data *data = dev_get_drvdata(&rmi_dev->dev);

 rmi_disable_irq(rmi_dev, 0);

 irq_domain_remove(data->irqdomain);
 data->irqdomain = ((void*)0);

 rmi_f34_remove_sysfs(rmi_dev);
 rmi_free_function_list(rmi_dev);

 return 0;
}
