
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int EFAULT ;
 int dca_common_get_tag (struct device*,int) ;

u8 dca3_get_tag(struct device *dev, int cpu)
{
 if (!dev)
  return -EFAULT;

 return dca_common_get_tag(dev, cpu);
}
