
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ast_private {int dummy; } ;


 int ast_mindwm (struct ast_private*,int) ;

__attribute__((used)) static u32 get_fw_base(struct ast_private *ast)
{
 return ast_mindwm(ast, 0x1e6e2104) & 0x7fffffff;
}
