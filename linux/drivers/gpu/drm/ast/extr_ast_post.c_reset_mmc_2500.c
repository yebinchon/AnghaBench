
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ast_private {int dummy; } ;


 int ast_moutdwm (struct ast_private*,int,int) ;
 int mdelay (int) ;

__attribute__((used)) static void reset_mmc_2500(struct ast_private *ast)
{
 ast_moutdwm(ast, 0x1E78505C, 0x00000004);
 ast_moutdwm(ast, 0x1E785044, 0x00000001);
 ast_moutdwm(ast, 0x1E785048, 0x00004755);
 ast_moutdwm(ast, 0x1E78504C, 0x00000013);
 mdelay(100);
 ast_moutdwm(ast, 0x1E785054, 0x00000077);
 ast_moutdwm(ast, 0x1E6E0000, 0xFC600309);
}
