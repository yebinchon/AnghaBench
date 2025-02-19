
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int dummy; } ;


 int AST_IO_CRTC_PORT ;
 int DRM_ERROR (char*) ;
 int ast_dram_init_2500 (struct ast_private*) ;
 int ast_get_index_reg_mask (struct ast_private*,int ,int,int) ;
 int ast_mindwm (struct ast_private*,int) ;
 int ast_moutdwm (struct ast_private*,int,int) ;
 int ast_read32 (struct ast_private*,int) ;
 int ast_write32 (struct ast_private*,int,int) ;
 int mdelay (int) ;

void ast_post_chip_2500(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;
 u32 temp;
 u8 reg;

 reg = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xd0, 0xff);
 if ((reg & 0x80) == 0) {

  ast_moutdwm(ast, 0x1e600000, 0xAEED1A03);
  ast_moutdwm(ast, 0x1e600084, 0x00010000);
  ast_moutdwm(ast, 0x1e600088, 0x00000000);
  ast_moutdwm(ast, 0x1e6e2000, 0x1688A8A8);
  ast_write32(ast, 0xf004, 0x1e6e0000);
  ast_write32(ast, 0xf000, 0x1);
  ast_write32(ast, 0x12000, 0x1688a8a8);
  while (ast_read32(ast, 0x12000) != 0x1)
   ;

  ast_write32(ast, 0x10000, 0xfc600309);
  while (ast_read32(ast, 0x10000) != 0x1)
   ;


  temp = ast_read32(ast, 0x12008);
  temp |= 0x73;
  ast_write32(ast, 0x12008, temp);


  ast_moutdwm(ast, 0x1e6e2090, 0x20000000);
  temp = ast_mindwm(ast, 0x1e6e2094);
  temp |= 0x00004000;
  ast_moutdwm(ast, 0x1e6e2094, temp);
  temp = ast_mindwm(ast, 0x1e6e2070);
  if (temp & 0x00800000) {
   ast_moutdwm(ast, 0x1e6e207c, 0x00800000);
   mdelay(100);
   ast_moutdwm(ast, 0x1e6e2070, 0x00800000);
  }

  if (!ast_dram_init_2500(ast))
   DRM_ERROR("DRAM init failed !\n");

  temp = ast_mindwm(ast, 0x1e6e2040);
  ast_moutdwm(ast, 0x1e6e2040, temp | 0x40);
 }


 do {
  reg = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xd0, 0xff);
 } while ((reg & 0x40) == 0);
}
