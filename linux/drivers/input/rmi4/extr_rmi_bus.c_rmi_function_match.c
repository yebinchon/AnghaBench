
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmi_function_handler {scalar_t__ func; } ;
struct TYPE_2__ {scalar_t__ function_number; } ;
struct rmi_function {TYPE_1__ fd; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct rmi_function* to_rmi_function (struct device*) ;
 struct rmi_function_handler* to_rmi_function_handler (struct device_driver*) ;

__attribute__((used)) static int rmi_function_match(struct device *dev, struct device_driver *drv)
{
 struct rmi_function_handler *handler = to_rmi_function_handler(drv);
 struct rmi_function *fn = to_rmi_function(dev);

 return fn->fd.function_number == handler->func;
}
