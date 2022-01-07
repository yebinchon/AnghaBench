
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int dummy; } ;


 int AST_IO_CRTC_PORT ;
 int ast_read32 (struct ast_private*,int) ;
 int ast_set_index_reg_mask (struct ast_private*,int ,int,int,int) ;
 int ast_write32 (struct ast_private*,int,int) ;

__attribute__((used)) static void ast_init_analog(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;
 u32 data;






 ast_write32(ast, 0xf004, 0x1e6e0000);
 ast_write32(ast, 0xf000, 0x1);


 ast_write32(ast, 0x12000, 0x1688a8a8);
 ast_write32(ast, 0x12000, 0x1688a8a8);
 ast_write32(ast, 0x12000, 0x1688a8a8);


 data = ast_read32(ast, 0x1202c);
 data &= 0xfffcffff;
 ast_write32(ast, 0, data);


 ast_set_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xa3, 0xcf, 0x00);
}
