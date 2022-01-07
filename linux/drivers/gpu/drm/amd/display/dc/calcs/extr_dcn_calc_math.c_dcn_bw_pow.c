
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float dcn_bw_pow(float a, float exp)
{
 float temp;

 if ((int)exp == 0)
  return 1;
 temp = dcn_bw_pow(a, (int)(exp / 2));
 if (((int)exp % 2) == 0) {
  return temp * temp;
 } else {
  if ((int)exp > 0)
   return a * temp * temp;
  else
   return (temp * temp) / a;
 }
}
