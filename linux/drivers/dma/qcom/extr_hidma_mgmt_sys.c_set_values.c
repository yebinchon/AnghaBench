
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hidma_mgmt_dev {int dummy; } ;
struct TYPE_4__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {int (* set ) (struct hidma_mgmt_dev*,unsigned long) ;int name; } ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 struct hidma_mgmt_dev* dev_get_drvdata (struct device*) ;
 TYPE_2__* hidma_mgmt_files ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 scalar_t__ strcmp (int ,int ) ;
 int stub1 (struct hidma_mgmt_dev*,unsigned long) ;

__attribute__((used)) static ssize_t set_values(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct hidma_mgmt_dev *mdev = dev_get_drvdata(dev);
 unsigned long tmp;
 unsigned int i;
 int rc;

 rc = kstrtoul(buf, 0, &tmp);
 if (rc)
  return rc;

 for (i = 0; i < ARRAY_SIZE(hidma_mgmt_files); i++) {
  if (strcmp(attr->attr.name, hidma_mgmt_files[i].name) == 0) {
   rc = hidma_mgmt_files[i].set(mdev, tmp);
   if (rc)
    return rc;

   break;
  }
 }
 return count;
}
