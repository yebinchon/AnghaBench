
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef unsigned int u16 ;



__attribute__((used)) static u16 fan_to_reg(u32 fan, unsigned int divreg)
{
 if (!fan)
  return 0;

 return (1350000U / fan) >> divreg;
}
