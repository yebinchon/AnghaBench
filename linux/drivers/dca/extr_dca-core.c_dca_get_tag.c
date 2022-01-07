
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int dca_common_get_tag (struct device*,int) ;

u8 dca_get_tag(int cpu)
{
 struct device *dev = ((void*)0);

 return dca_common_get_tag(dev, cpu);
}
