
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_device {int dev; } ;


 int dev_warn (int *,char*,int) ;
 int rmi_enable_irq (struct rmi_device*,int) ;
 int rmi_resume_functions (struct rmi_device*) ;

int rmi_driver_resume(struct rmi_device *rmi_dev, bool clear_wake)
{
 int retval;

 rmi_enable_irq(rmi_dev, clear_wake);

 retval = rmi_resume_functions(rmi_dev);
 if (retval)
  dev_warn(&rmi_dev->dev, "Failed to suspend functions: %d\n",
   retval);

 return retval;
}
