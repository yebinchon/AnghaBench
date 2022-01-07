
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pti_device {int lpp_dest; int lpp_dest_mask; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (int *) ;
 int BIT (int) ;
 scalar_t__ PAGE_SIZE ;
 struct pti_device* dev_get_drvdata (struct device*) ;
 int * lpp_dest_str ;
 scalar_t__ scnprintf (char*,scalar_t__,char const*,int ) ;

__attribute__((used)) static ssize_t lpp_dest_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct pti_device *pti = dev_get_drvdata(dev);
 ssize_t ret = 0;
 int i;

 for (i = ARRAY_SIZE(lpp_dest_str) - 1; i >= 0; i--) {
  const char *fmt = pti->lpp_dest == i ? "[%s] " : "%s ";

  if (!(pti->lpp_dest_mask & BIT(i)))
   continue;

  ret += scnprintf(buf + ret, PAGE_SIZE - ret,
     fmt, lpp_dest_str[i]);
 }

 if (ret)
  buf[ret - 1] = '\n';

 return ret;
}
