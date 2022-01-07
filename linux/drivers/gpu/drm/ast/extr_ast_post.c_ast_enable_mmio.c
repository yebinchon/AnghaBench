
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int dummy; } ;


 int AST_IO_CRTC_PORT ;
 int ast_set_index_reg (struct ast_private*,int ,int,int) ;

void ast_enable_mmio(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;

 ast_set_index_reg(ast, AST_IO_CRTC_PORT, 0xa1, 0x06);
}
