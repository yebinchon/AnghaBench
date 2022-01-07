
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_device {int dummy; } ;


 int rmi_driver_process_config_requests (struct rmi_device*) ;
 int rmi_process_interrupt_requests (struct rmi_device*) ;

int rmi_enable_sensor(struct rmi_device *rmi_dev)
{
 int retval = 0;

 retval = rmi_driver_process_config_requests(rmi_dev);
 if (retval < 0)
  return retval;

 return rmi_process_interrupt_requests(rmi_dev);
}
