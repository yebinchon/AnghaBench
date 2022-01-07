
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LDBnBBGCL (int ) ;
 int LDBnBPPCR (int) ;
__attribute__((used)) static inline bool lcdc_is_banked(u32 reg)
{
 switch (reg) {
 case 139:
 case 138:
 case 137:
 case 145:
 case 134:
 case 136:
 case 135:
 case 140:
 case 128:
 case 129:
 case 130:
 case 143:
 case 141:
 case 133:
 case 131:
 case 142:
 case 132:
 case 144:
  return 1;
 default:
  return reg >= LDBnBBGCL(0) && reg <= LDBnBPPCR(3);
 }
}
