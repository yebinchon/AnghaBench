
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s8 ;


 int EINVAL ;

__attribute__((used)) static inline s8 convert_burst(u32 maxburst)
{
 switch (maxburst) {
 case 1:
  return 0;
 case 4:
  return 1;
 case 8:
  return 2;
 case 16:
  return 3;
 default:
  return -EINVAL;
 }
}
