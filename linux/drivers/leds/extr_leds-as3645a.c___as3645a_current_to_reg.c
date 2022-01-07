
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int __as3645a_current_to_reg(unsigned int min, unsigned int max,
          unsigned int step,
          unsigned int val)
{
 if (val < min)
  val = min;

 if (val > max)
  val = max;

 return (val - min) / step;
}
