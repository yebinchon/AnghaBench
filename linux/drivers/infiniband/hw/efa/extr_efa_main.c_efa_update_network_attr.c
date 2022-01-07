
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efa_dev {int addr; TYPE_1__* pdev; int mtu; } ;
struct efa_com_get_network_attr_result {int mtu; int addr; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void efa_update_network_attr(struct efa_dev *dev,
        struct efa_com_get_network_attr_result *network_attr)
{
 memcpy(dev->addr, network_attr->addr, sizeof(network_attr->addr));
 dev->mtu = network_attr->mtu;

 dev_dbg(&dev->pdev->dev, "Full address %pI6\n", dev->addr);
}
