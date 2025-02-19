
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ilog2 (int) ;
 int is_power_of_2 (int) ;

__attribute__((used)) static int cvt_auto_temp(int input)
{
 if (input == 0xF)
  return 6;
 if (input == 0x9)
  return 5;
 if (input < 1 || !is_power_of_2(input))
  return -EINVAL;
 return ilog2(input);
}
