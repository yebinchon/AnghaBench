
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ishtp_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* ipc_reset ) (struct ishtp_device*) ;} ;


 int stub1 (struct ishtp_device*) ;

__attribute__((used)) static inline int ish_ipc_reset(struct ishtp_device *dev)
{
 return dev->ops->ipc_reset(dev);
}
