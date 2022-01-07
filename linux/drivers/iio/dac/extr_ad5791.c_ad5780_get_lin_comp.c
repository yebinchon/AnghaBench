
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AD5780_LINCOMP_0_10 ;
 int AD5780_LINCOMP_10_20 ;

__attribute__((used)) static int ad5780_get_lin_comp(unsigned int span)
{
 if (span <= 10000)
  return AD5780_LINCOMP_0_10;
 else
  return AD5780_LINCOMP_10_20;
}
