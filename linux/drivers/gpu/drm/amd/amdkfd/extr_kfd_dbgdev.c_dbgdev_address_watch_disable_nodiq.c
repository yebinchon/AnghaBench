
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_dev {int kgd; TYPE_1__* kfd2kgd; } ;
struct TYPE_2__ {int (* address_watch_disable ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void dbgdev_address_watch_disable_nodiq(struct kfd_dev *dev)
{
 dev->kfd2kgd->address_watch_disable(dev->kgd);
}
