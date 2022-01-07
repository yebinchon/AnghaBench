
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {scalar_t__ chip; int tx_chip_type; } ;


 scalar_t__ AST2300 ;
 scalar_t__ AST2400 ;
 int AST_IO_CRTC_PORT ;
 int AST_TX_SIL164 ;
 int ast_get_index_reg_mask (struct ast_private*,int ,int,int) ;
 int ast_init_analog (struct drm_device*) ;
 int ast_init_dvo (struct drm_device*) ;
 int ast_launch_m68k (struct drm_device*) ;

void ast_init_3rdtx(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;
 u8 jreg;

 if (ast->chip == AST2300 || ast->chip == AST2400) {
  jreg = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xd1, 0xff);
  switch (jreg & 0x0e) {
  case 0x04:
   ast_init_dvo(dev);
   break;
  case 0x08:
   ast_launch_m68k(dev);
   break;
  case 0x0c:
   ast_init_dvo(dev);
   break;
  default:
   if (ast->tx_chip_type == AST_TX_SIL164)
    ast_init_dvo(dev);
   else
    ast_init_analog(dev);
  }
 }
}
