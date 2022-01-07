
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_function_handler {int driver; } ;


 int driver_unregister (int *) ;

void rmi_unregister_function_handler(struct rmi_function_handler *handler)
{
 driver_unregister(&handler->driver);
}
