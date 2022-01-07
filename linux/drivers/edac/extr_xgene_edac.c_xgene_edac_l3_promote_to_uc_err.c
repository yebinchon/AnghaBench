
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int L3C_ELR_ERRSYN (int) ;
 int L3C_ELR_ERRWAY (int) ;
 int L3C_ESR_DATATAG_MASK ;

__attribute__((used)) static bool xgene_edac_l3_promote_to_uc_err(u32 l3cesr, u32 l3celr)
{
 if (l3cesr & L3C_ESR_DATATAG_MASK) {
  switch (L3C_ELR_ERRSYN(l3celr)) {
  case 0x13C:
  case 0x0B4:
  case 0x007:
  case 0x00D:
  case 0x00E:
  case 0x019:
  case 0x01A:
  case 0x01C:
  case 0x04E:
  case 0x041:
   return 1;
  }
 } else if (L3C_ELR_ERRWAY(l3celr) == 9)
  return 1;

 return 0;
}
