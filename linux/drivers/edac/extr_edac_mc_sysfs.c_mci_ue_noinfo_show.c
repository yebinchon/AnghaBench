
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int ue_noinfo_count; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct mem_ctl_info* to_mci (struct device*) ;

__attribute__((used)) static ssize_t mci_ue_noinfo_show(struct device *dev,
      struct device_attribute *mattr,
      char *data)
{
 struct mem_ctl_info *mci = to_mci(dev);

 return sprintf(data, "%d\n", mci->ue_noinfo_count);
}
