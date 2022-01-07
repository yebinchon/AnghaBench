
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int section; } ;
struct amd64_pvt {TYPE_1__ injection; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct mem_ctl_info* to_mci (struct device*) ;

__attribute__((used)) static ssize_t amd64_inject_section_show(struct device *dev,
      struct device_attribute *mattr,
      char *buf)
{
 struct mem_ctl_info *mci = to_mci(dev);
 struct amd64_pvt *pvt = mci->pvt_info;
 return sprintf(buf, "0x%x\n", pvt->injection.section);
}
