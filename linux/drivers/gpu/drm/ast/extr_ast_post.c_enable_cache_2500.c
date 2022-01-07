
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ast_private {int dummy; } ;


 int ast_mindwm (struct ast_private*,int) ;
 int ast_moutdwm (struct ast_private*,int,int) ;

__attribute__((used)) static void enable_cache_2500(struct ast_private *ast)
{
 u32 reg_04, data;

 reg_04 = ast_mindwm(ast, 0x1E6E0004);
 ast_moutdwm(ast, 0x1E6E0004, reg_04 | 0x1000);

 do
  data = ast_mindwm(ast, 0x1E6E0004);
 while (!(data & 0x80000));
 ast_moutdwm(ast, 0x1E6E0004, reg_04 | 0x400);
}
