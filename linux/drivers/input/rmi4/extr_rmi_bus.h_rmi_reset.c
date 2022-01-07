
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmi_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* reset_handler ) (struct rmi_device*) ;} ;


 int stub1 (struct rmi_device*) ;

__attribute__((used)) static inline int rmi_reset(struct rmi_device *d)
{
 return d->driver->reset_handler(d);
}
