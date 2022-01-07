
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_function_handler {int (* remove ) (struct rmi_function*) ;} ;
struct rmi_function {int dummy; } ;
struct device {int driver; } ;


 int stub1 (struct rmi_function*) ;
 struct rmi_function* to_rmi_function (struct device*) ;
 struct rmi_function_handler* to_rmi_function_handler (int ) ;

__attribute__((used)) static int rmi_function_remove(struct device *dev)
{
 struct rmi_function *fn = to_rmi_function(dev);
 struct rmi_function_handler *handler =
     to_rmi_function_handler(dev->driver);

 if (handler->remove)
  handler->remove(fn);

 return 0;
}
