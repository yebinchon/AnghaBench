
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int dummy; } ;


 int AST_IO_MISC_PORT_WRITE ;
 int AST_IO_VGA_ENABLE_PORT ;
 int ast_io_write8 (struct ast_private*,int ,int) ;

void ast_enable_vga(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;

 ast_io_write8(ast, AST_IO_VGA_ENABLE_PORT, 0x01);
 ast_io_write8(ast, AST_IO_MISC_PORT_WRITE, 0x01);
}
