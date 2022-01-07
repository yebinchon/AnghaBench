
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ast_private {int dummy; } ;


 int ast_mindwm (struct ast_private*,int) ;
 int ast_moutdwm (struct ast_private*,int,int) ;

__attribute__((used)) static void check_dram_size_2500(struct ast_private *ast, u32 tRFC)
{
 u32 reg_04, reg_14;

 reg_04 = ast_mindwm(ast, 0x1E6E0004) & 0xfffffffc;
 reg_14 = ast_mindwm(ast, 0x1E6E0014) & 0xffffff00;

 ast_moutdwm(ast, 0xA0100000, 0x41424344);
 ast_moutdwm(ast, 0x90100000, 0x35363738);
 ast_moutdwm(ast, 0x88100000, 0x292A2B2C);
 ast_moutdwm(ast, 0x80100000, 0x1D1E1F10);


 if (ast_mindwm(ast, 0xA0100000) == 0x41424344) {
  reg_04 |= 0x03;
  reg_14 |= (tRFC >> 24) & 0xFF;

 } else if (ast_mindwm(ast, 0x90100000) == 0x35363738) {
  reg_04 |= 0x02;
  reg_14 |= (tRFC >> 16) & 0xFF;

 } else if (ast_mindwm(ast, 0x88100000) == 0x292A2B2C) {
  reg_04 |= 0x01;
  reg_14 |= (tRFC >> 8) & 0xFF;
 } else {
  reg_14 |= tRFC & 0xFF;
 }
 ast_moutdwm(ast, 0x1E6E0004, reg_04);
 ast_moutdwm(ast, 0x1E6E0014, reg_14);
}
