
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mem_ctl_info {struct i7core_pvt* pvt_info; } ;
struct TYPE_2__ {scalar_t__ eccmask; scalar_t__ enable; } ;
struct i7core_pvt {TYPE_1__ inject; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EIO ;
 int disable_inject (struct mem_ctl_info*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 struct mem_ctl_info* to_mci (struct device*) ;

__attribute__((used)) static ssize_t i7core_inject_eccmask_store(struct device *dev,
        struct device_attribute *mattr,
        const char *data, size_t count)
{
 struct mem_ctl_info *mci = to_mci(dev);
 struct i7core_pvt *pvt = mci->pvt_info;
 unsigned long value;
 int rc;

 if (pvt->inject.enable)
  disable_inject(mci);

 rc = kstrtoul(data, 10, &value);
 if (rc < 0)
  return -EIO;

 pvt->inject.eccmask = (u32) value;
 return count;
}
