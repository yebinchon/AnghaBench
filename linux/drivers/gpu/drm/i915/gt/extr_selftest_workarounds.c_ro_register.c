
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RING_FORCE_TO_NONPRIV_ACCESS_MASK ;
 int RING_FORCE_TO_NONPRIV_ACCESS_RD ;

__attribute__((used)) static bool ro_register(u32 reg)
{
 if ((reg & RING_FORCE_TO_NONPRIV_ACCESS_MASK) ==
      RING_FORCE_TO_NONPRIV_ACCESS_RD)
  return 1;

 return 0;
}
