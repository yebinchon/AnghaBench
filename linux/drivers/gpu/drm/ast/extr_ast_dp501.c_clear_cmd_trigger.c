
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ast_private {int dummy; } ;


 int AST_IO_CRTC_PORT ;
 int ast_set_index_reg_mask (struct ast_private*,int ,int,int,int) ;

__attribute__((used)) static void clear_cmd_trigger(struct ast_private *ast)
{
 ast_set_index_reg_mask(ast, AST_IO_CRTC_PORT, 0x9b, ~0x40, 0x00);
}
