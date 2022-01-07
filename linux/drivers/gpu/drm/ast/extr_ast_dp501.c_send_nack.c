
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ast_private {int dummy; } ;


 int AST_IO_CRTC_PORT ;
 int ast_get_index_reg_mask (struct ast_private*,int ,int,int) ;
 int ast_set_index_reg_mask (struct ast_private*,int ,int,int,int) ;

__attribute__((used)) static void send_nack(struct ast_private *ast)
{
 u8 sendack;
 sendack = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0x9b, 0xff);
 sendack &= ~0x80;
 ast_set_index_reg_mask(ast, AST_IO_CRTC_PORT, 0x9b, 0x00, sendack);
}
