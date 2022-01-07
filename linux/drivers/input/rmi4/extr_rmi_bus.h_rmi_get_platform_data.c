
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmi_device_platform_data {int dummy; } ;
struct rmi_device {TYPE_1__* xport; } ;
struct TYPE_2__ {struct rmi_device_platform_data pdata; } ;



__attribute__((used)) static inline struct rmi_device_platform_data *
rmi_get_platform_data(struct rmi_device *d)
{
 return &d->xport->pdata;
}
