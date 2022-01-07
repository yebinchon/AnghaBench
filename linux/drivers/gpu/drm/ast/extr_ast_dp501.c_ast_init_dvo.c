
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {scalar_t__ chip; } ;


 scalar_t__ AST2300 ;
 int AST_IO_CRTC_PORT ;
 int ast_get_index_reg_mask (struct ast_private*,int ,int,int) ;
 int ast_read32 (struct ast_private*,int) ;
 int ast_set_index_reg_mask (struct ast_private*,int ,int,int,int) ;
 int ast_write32 (struct ast_private*,int,int) ;

__attribute__((used)) static bool ast_init_dvo(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;
 u8 jreg;
 u32 data;
 ast_write32(ast, 0xf004, 0x1e6e0000);
 ast_write32(ast, 0xf000, 0x1);
 ast_write32(ast, 0x12000, 0x1688a8a8);

 jreg = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xd0, 0xff);
 if (!(jreg & 0x80)) {

  data = ast_read32(ast, 0x12008);

  data &= 0xfffff8ff;
  data |= 0x00000500;
  ast_write32(ast, 0x12008, data);

  if (ast->chip == AST2300) {
   data = ast_read32(ast, 0x12084);

   data |= 0xfffe0000;
   ast_write32(ast, 0x12084, data);

   data = ast_read32(ast, 0x12088);

   data |= 0x000fffff;
   ast_write32(ast, 0x12088, data);

   data = ast_read32(ast, 0x12090);

   data &= 0xffffffcf;
   data |= 0x00000020;
   ast_write32(ast, 0x12090, data);
  } else {
   data = ast_read32(ast, 0x12088);

   data |= 0x30000000;
   ast_write32(ast, 0x12088, data);

   data = ast_read32(ast, 0x1208c);

   data |= 0x000000cf;
   ast_write32(ast, 0x1208c, data);

   data = ast_read32(ast, 0x120a4);

   data |= 0xffff0000;
   ast_write32(ast, 0x120a4, data);

   data = ast_read32(ast, 0x120a8);

   data |= 0x0000000f;
   ast_write32(ast, 0x120a8, data);

   data = ast_read32(ast, 0x12094);

   data |= 0x00000002;
   ast_write32(ast, 0x12094, data);
  }
 }


 data = ast_read32(ast, 0x1202c);
 data &= 0xfffbffff;
 ast_write32(ast, 0x1202c, data);


 ast_set_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xa3, 0xcf, 0x80);
 return 1;
}
