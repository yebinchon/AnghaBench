
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ILLEGAL_VL ;
 int OPA_MAX_SCS ;

__attribute__((used)) static void filter_sc2vlt(void *data, bool set)
{
 int i;
 u8 *pd = data;

 for (i = 0; i < OPA_MAX_SCS; i++) {
  if (i == 15)
   continue;

  if (set) {
   if ((pd[i] & 0x1f) == 0xf)
    pd[i] = ILLEGAL_VL;
  } else {
   if ((pd[i] & 0x1f) == ILLEGAL_VL)
    pd[i] = 0xf;
  }
 }
}
