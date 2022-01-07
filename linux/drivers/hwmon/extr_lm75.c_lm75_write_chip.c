
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int EINVAL ;

 int lm75_update_interval (struct device*,long) ;

__attribute__((used)) static int lm75_write_chip(struct device *dev, u32 attr, long val)
{
 switch (attr) {
 case 128:
  return lm75_update_interval(dev, val);
 default:
  return -EINVAL;
 }
 return 0;
}
