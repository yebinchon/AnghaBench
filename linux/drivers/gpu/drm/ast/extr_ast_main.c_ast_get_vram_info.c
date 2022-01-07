
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int dummy; } ;


 int AST_IO_CRTC_PORT ;
 int AST_VIDMEM_DEFAULT_SIZE ;
 int AST_VIDMEM_SIZE_16M ;
 int AST_VIDMEM_SIZE_32M ;
 int AST_VIDMEM_SIZE_64M ;
 int AST_VIDMEM_SIZE_8M ;
 int ast_get_index_reg_mask (struct ast_private*,int ,int,int) ;
 int ast_open_key (struct ast_private*) ;

__attribute__((used)) static u32 ast_get_vram_info(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;
 u8 jreg;
 u32 vram_size;
 ast_open_key(ast);

 vram_size = AST_VIDMEM_DEFAULT_SIZE;
 jreg = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xaa, 0xff);
 switch (jreg & 3) {
 case 0: vram_size = AST_VIDMEM_SIZE_8M; break;
 case 1: vram_size = AST_VIDMEM_SIZE_16M; break;
 case 2: vram_size = AST_VIDMEM_SIZE_32M; break;
 case 3: vram_size = AST_VIDMEM_SIZE_64M; break;
 }

 jreg = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0x99, 0xff);
 switch (jreg & 0x03) {
 case 1:
  vram_size -= 0x100000;
  break;
 case 2:
  vram_size -= 0x200000;
  break;
 case 3:
  vram_size -= 0x400000;
  break;
 }

 return vram_size;
}
