
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;

__attribute__((used)) static int vadc_hw_settle_time_from_dt(u32 value)
{
 if ((value <= 1000 && value % 100) || (value > 1000 && value % 2000))
  return -EINVAL;

 if (value <= 1000)
  value /= 100;
 else
  value = value / 2000 + 10;

 return value;
}
