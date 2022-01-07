
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_6__ {TYPE_1__** netdevs; int * phy_port; } ;
struct TYPE_7__ {size_t num_ports; int max_mtu; } ;
struct hns_roce_dev {TYPE_2__ iboe; TYPE_3__ caps; TYPE_4__* hw; } ;
struct TYPE_8__ {int (* set_mtu ) (struct hns_roce_dev*,int ,int ) ;} ;
struct TYPE_5__ {int dev_addr; } ;


 int hns_roce_set_mac (struct hns_roce_dev*,size_t,int ) ;
 int stub1 (struct hns_roce_dev*,int ,int ) ;

__attribute__((used)) static int hns_roce_setup_mtu_mac(struct hns_roce_dev *hr_dev)
{
 int ret;
 u8 i;

 for (i = 0; i < hr_dev->caps.num_ports; i++) {
  if (hr_dev->hw->set_mtu)
   hr_dev->hw->set_mtu(hr_dev, hr_dev->iboe.phy_port[i],
         hr_dev->caps.max_mtu);
  ret = hns_roce_set_mac(hr_dev, i,
           hr_dev->iboe.netdevs[i]->dev_addr);
  if (ret)
   return ret;
 }

 return 0;
}
