
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ast_private {int dummy; } ;
struct ast2300_dram_param {int dummy; } ;


 int CBR_SIZE2 ;
 int CBR_THRESHOLD ;
 int ast_mindwm (struct ast_private*,int) ;
 int ast_moutdwm (struct ast_private*,int,int) ;
 int cbr_scan (struct ast_private*) ;
 int finetuneDQI_L (struct ast_private*,struct ast2300_dram_param*) ;
 int finetuneDQSI (struct ast_private*) ;

__attribute__((used)) static bool cbr_dll2(struct ast_private *ast, struct ast2300_dram_param *param)
{
 u32 dllmin[2], dllmax[2], dlli, data, passcnt, retry = 0;
 bool status = 0;

 finetuneDQSI(ast);
 if (finetuneDQI_L(ast, param) == 0)
  return status;

CBR_START2:
 dllmin[0] = dllmin[1] = 0xff;
 dllmax[0] = dllmax[1] = 0x0;
 passcnt = 0;
 for (dlli = 0; dlli < 76; dlli++) {
  ast_moutdwm(ast, 0x1E6E0068, 0x00001300 | (dlli << 16) | (dlli << 24));
  ast_moutdwm(ast, 0x1E6E0074, CBR_SIZE2);
  data = cbr_scan(ast);
  if (data != 0) {
   if (data & 0x1) {
    if (dllmin[0] > dlli) {
     dllmin[0] = dlli;
    }
    if (dllmax[0] < dlli) {
     dllmax[0] = dlli;
    }
   }
   if (data & 0x2) {
    if (dllmin[1] > dlli) {
     dllmin[1] = dlli;
    }
    if (dllmax[1] < dlli) {
     dllmax[1] = dlli;
    }
   }
   passcnt++;
  } else if (passcnt >= CBR_THRESHOLD) {
   break;
  }
 }
 if (retry++ > 10)
  goto CBR_DONE2;
 if (dllmax[0] == 0 || (dllmax[0]-dllmin[0]) < CBR_THRESHOLD) {
  goto CBR_START2;
 }
 if (dllmax[1] == 0 || (dllmax[1]-dllmin[1]) < CBR_THRESHOLD) {
  goto CBR_START2;
 }
 status = 1;
CBR_DONE2:
 dlli = (dllmin[1] + dllmax[1]) >> 1;
 dlli <<= 8;
 dlli += (dllmin[0] + dllmax[0]) >> 1;
 ast_moutdwm(ast, 0x1E6E0068, ast_mindwm(ast, 0x1E720058) | (dlli << 16));
 return status;
}
