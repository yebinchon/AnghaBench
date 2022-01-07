
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



inline bool is_buswidth_valid(u8 buswidth, bool is_mpc8308)
{
 switch (buswidth) {
 case 16:
  if (is_mpc8308)
   return 0;
 case 1:
 case 2:
 case 4:
 case 32:
  break;
 default:
  return 0;
 }

 return 1;
}
