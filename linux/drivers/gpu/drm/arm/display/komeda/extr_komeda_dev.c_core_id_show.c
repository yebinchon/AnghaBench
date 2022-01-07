
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int core_id; } ;
struct komeda_dev {TYPE_1__ chip; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct komeda_dev* dev_to_mdev (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t
core_id_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct komeda_dev *mdev = dev_to_mdev(dev);

 return snprintf(buf, PAGE_SIZE, "0x%08x\n", mdev->chip.core_id);
}
