
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {scalar_t__ chip; } ;


 scalar_t__ AST1180 ;
 int AST_IO_VGA_ENABLE_PORT ;
 int ast_io_read8 (struct ast_private*,int ) ;

bool ast_is_vga_enabled(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;
 u8 ch;

 if (ast->chip == AST1180) {

 } else {
  ch = ast_io_read8(ast, AST_IO_VGA_ENABLE_PORT);
  return !!(ch & 0x01);
 }
 return 0;
}
