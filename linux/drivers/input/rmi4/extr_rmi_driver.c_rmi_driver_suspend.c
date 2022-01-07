
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_device {int dev; } ;


 int dev_warn (int *,char*,int) ;
 int rmi_disable_irq (struct rmi_device*,int) ;
 int rmi_suspend_functions (struct rmi_device*) ;

int rmi_driver_suspend(struct rmi_device *rmi_dev, bool enable_wake)
{
 int retval;

 retval = rmi_suspend_functions(rmi_dev);
 if (retval)
  dev_warn(&rmi_dev->dev, "Failed to suspend functions: %d\n",
   retval);

 rmi_disable_irq(rmi_dev, enable_wake);
 return retval;
}
