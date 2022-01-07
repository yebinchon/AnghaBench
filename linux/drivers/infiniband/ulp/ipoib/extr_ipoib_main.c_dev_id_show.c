
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {scalar_t__ dev_port; scalar_t__ dev_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int comm; } ;


 TYPE_1__* current ;
 int netdev_info_once (struct net_device*,char*,int ) ;
 int sprintf (char*,char*,scalar_t__) ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t dev_id_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct net_device *ndev = to_net_dev(dev);
 if (ndev->dev_port && ndev->dev_id == ndev->dev_port)
  netdev_info_once(ndev,
   "\"%s\" wants to know my dev_id. Should it look at dev_port instead? See Documentation/ABI/testing/sysfs-class-net for more info.\n",
   current->comm);

 return sprintf(buf, "%#x\n", ndev->dev_id);
}
