
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int dummy; } ;
struct ast2300_dram_param {int dram_freq; scalar_t__ dram_type; int vram_size; int dram_chipid; } ;


 scalar_t__ AST_DDR2 ;
 scalar_t__ AST_DDR3 ;
 int AST_DRAM_1Gx16 ;
 int AST_DRAM_2Gx16 ;
 int AST_DRAM_4Gx16 ;
 int AST_DRAM_512Mx16 ;
 int AST_IO_CRTC_PORT ;
 int AST_VIDMEM_SIZE_16M ;
 int AST_VIDMEM_SIZE_32M ;
 int AST_VIDMEM_SIZE_64M ;
 int AST_VIDMEM_SIZE_8M ;
 int ast_get_index_reg_mask (struct ast_private*,int ,int,int) ;
 int ast_mindwm (struct ast_private*,int) ;
 int ast_moutdwm (struct ast_private*,int,int) ;
 int ast_read32 (struct ast_private*,int) ;
 int ast_write32 (struct ast_private*,int,int) ;
 int ddr2_init (struct ast_private*,struct ast2300_dram_param*) ;
 int ddr3_init (struct ast_private*,struct ast2300_dram_param*) ;
 int get_ddr2_info (struct ast_private*,struct ast2300_dram_param*) ;
 int get_ddr3_info (struct ast_private*,struct ast2300_dram_param*) ;

__attribute__((used)) static void ast_post_chip_2300(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;
 struct ast2300_dram_param param;
 u32 temp;
 u8 reg;

 reg = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xd0, 0xff);
 if ((reg & 0x80) == 0) {
  ast_write32(ast, 0xf004, 0x1e6e0000);
  ast_write32(ast, 0xf000, 0x1);
  ast_write32(ast, 0x12000, 0x1688a8a8);
  do {
   ;
  } while (ast_read32(ast, 0x12000) != 0x1);

  ast_write32(ast, 0x10000, 0xfc600309);
  do {
   ;
  } while (ast_read32(ast, 0x10000) != 0x1);


  temp = ast_read32(ast, 0x12008);
  temp |= 0x73;
  ast_write32(ast, 0x12008, temp);

  param.dram_freq = 396;
  param.dram_type = AST_DDR3;
  temp = ast_mindwm(ast, 0x1e6e2070);
  if (temp & 0x01000000)
   param.dram_type = AST_DDR2;
                switch (temp & 0x18000000) {
  case 0:
   param.dram_chipid = AST_DRAM_512Mx16;
   break;
  default:
  case 0x08000000:
   param.dram_chipid = AST_DRAM_1Gx16;
   break;
  case 0x10000000:
   param.dram_chipid = AST_DRAM_2Gx16;
   break;
  case 0x18000000:
   param.dram_chipid = AST_DRAM_4Gx16;
   break;
  }
                switch (temp & 0x0c) {
                default:
  case 0x00:
   param.vram_size = AST_VIDMEM_SIZE_8M;
   break;

  case 0x04:
   param.vram_size = AST_VIDMEM_SIZE_16M;
   break;

  case 0x08:
   param.vram_size = AST_VIDMEM_SIZE_32M;
   break;

  case 0x0c:
   param.vram_size = AST_VIDMEM_SIZE_64M;
   break;
  }

  if (param.dram_type == AST_DDR3) {
   get_ddr3_info(ast, &param);
   ddr3_init(ast, &param);
  } else {
   get_ddr2_info(ast, &param);
   ddr2_init(ast, &param);
  }

  temp = ast_mindwm(ast, 0x1e6e2040);
  ast_moutdwm(ast, 0x1e6e2040, temp | 0x40);
 }


 do {
  reg = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xd0, 0xff);
 } while ((reg & 0x40) == 0);
}
