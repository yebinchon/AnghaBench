
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_dbg (struct device*,char*) ;

__attribute__((used)) static int sti_gdp_get_dst(struct device *dev, int dst, int src)
{
 if (dst == src)
  return dst;

 if (dst < src) {
  dev_dbg(dev, "WARNING: GDP scale not supported, will crop\n");
  return dst;
 }

 dev_dbg(dev, "WARNING: GDP scale not supported, will clamp\n");
 return src;
}
