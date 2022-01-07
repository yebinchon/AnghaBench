
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct net_device {int dev_addr; } ;
struct TYPE_2__ {struct net_device** netdevs; } ;
struct hns_roce_dev {TYPE_1__ iboe; struct device* dev; } ;
struct device {int dummy; } ;


 int ENODEV ;





 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*,size_t) ;
 int hns_roce_set_mac (struct hns_roce_dev*,size_t,int ) ;

__attribute__((used)) static int handle_en_event(struct hns_roce_dev *hr_dev, u8 port,
      unsigned long event)
{
 struct device *dev = hr_dev->dev;
 struct net_device *netdev;
 int ret = 0;

 netdev = hr_dev->iboe.netdevs[port];
 if (!netdev) {
  dev_err(dev, "port(%d) can't find netdev\n", port);
  return -ENODEV;
 }

 switch (event) {
 case 128:
 case 132:
 case 129:
 case 131:
  ret = hns_roce_set_mac(hr_dev, port, netdev->dev_addr);
  break;
 case 130:



  break;
 default:
  dev_dbg(dev, "NETDEV event = 0x%x!\n", (u32)(event));
  break;
 }

 return ret;
}
