
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int location; int type; } ;
struct nvkm_outp {TYPE_1__ info; } ;
typedef enum nvkm_ior_type { ____Placeholder_nvkm_ior_type } nvkm_ior_type ;
typedef enum nvkm_ior_proto { ____Placeholder_nvkm_ior_proto } nvkm_ior_proto ;


 int CRT ;
 int DAC ;





 int DP ;
 int LVDS ;
 int PIOR ;
 int SOR ;
 int TMDS ;
 int TV ;
 int UNKNOWN ;
 int WARN_ON (int) ;

__attribute__((used)) static enum nvkm_ior_proto
nvkm_outp_xlat(struct nvkm_outp *outp, enum nvkm_ior_type *type)
{
 switch (outp->info.location) {
 case 0:
  switch (outp->info.type) {
  case 132: *type = DAC; return CRT;
  case 128 : *type = DAC; return TV;
  case 129 : *type = SOR; return TMDS;
  case 130 : *type = SOR; return LVDS;
  case 131 : *type = SOR; return DP;
  default:
   break;
  }
  break;
 case 1:
  switch (outp->info.type) {
  case 129: *type = PIOR; return TMDS;
  case 131 : *type = PIOR; return TMDS;
  default:
   break;
  }
  break;
 default:
  break;
 }
 WARN_ON(1);
 return UNKNOWN;
}
