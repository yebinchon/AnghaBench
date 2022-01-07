
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct ast_private {int dummy; } ;


 int ast_read32 (struct ast_private*,int) ;
 int ast_write32 (struct ast_private*,int,int) ;

void ast_moutdwm(struct ast_private *ast, u32 r, u32 v)
{
 uint32_t data;
 ast_write32(ast, 0xf004, r & 0xffff0000);
 ast_write32(ast, 0xf000, 0x1);
 do {
  data = ast_read32(ast, 0xf004) & 0xffff0000;
 } while (data != (r & 0xffff0000));
 ast_write32(ast, 0x10000 + (r & 0x0000ffff), v);
}
