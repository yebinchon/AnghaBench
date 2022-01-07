
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct bnxt_en_dev {TYPE_3__* pdev; } ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_4__ {int owner; } ;
struct TYPE_5__ {TYPE_1__ driver; } ;


 int dev_put (struct net_device*) ;
 int module_put (int ) ;

__attribute__((used)) static void bnxt_re_dev_unprobe(struct net_device *netdev,
    struct bnxt_en_dev *en_dev)
{
 dev_put(netdev);
 module_put(en_dev->pdev->driver->driver.owner);
}
