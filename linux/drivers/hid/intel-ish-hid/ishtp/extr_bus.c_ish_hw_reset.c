
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ishtp_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* hw_reset ) (struct ishtp_device*) ;} ;


 int stub1 (struct ishtp_device*) ;

int ish_hw_reset(struct ishtp_device *dev)
{
 return dev->ops->hw_reset(dev);
}
