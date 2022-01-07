
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mem_ctl_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int highbank_mc_err_inject (struct mem_ctl_info*,int ) ;
 scalar_t__ kstrtou8 (char const*,int,int *) ;
 struct mem_ctl_info* to_mci (struct device*) ;

__attribute__((used)) static ssize_t highbank_mc_inject_ctrl(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct mem_ctl_info *mci = to_mci(dev);
 u8 synd;

 if (kstrtou8(buf, 16, &synd))
  return -EINVAL;

 highbank_mc_err_inject(mci, synd);

 return count;
}
