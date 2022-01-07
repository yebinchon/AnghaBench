
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ast_private {int dummy; } ;


 scalar_t__ mmctestburst2_ast2150 (struct ast_private*,int) ;

__attribute__((used)) static int cbrtest_ast2150(struct ast_private *ast)
{
 int i;

 for (i = 0; i < 8; i++)
  if (mmctestburst2_ast2150(ast, i))
   return 0;
 return 1;
}
