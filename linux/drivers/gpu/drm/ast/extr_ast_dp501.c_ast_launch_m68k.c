
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int* dp501_fw_addr; TYPE_1__* dp501_fw; } ;
struct TYPE_2__ {int size; scalar_t__ data; } ;


 int AST_IO_CRTC_PORT ;
 int ast_get_index_reg_mask (struct ast_private*,int ,int,int) ;
 scalar_t__ ast_load_dp501_microcode (struct drm_device*) ;
 int ast_mindwm (struct ast_private*,int) ;
 int ast_moutdwm (struct ast_private*,int,int) ;
 int ast_set_index_reg (struct ast_private*,int ,int,int) ;

__attribute__((used)) static bool ast_launch_m68k(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;
 u32 i, data, len = 0;
 u32 boot_address;
 u8 *fw_addr = ((void*)0);
 u8 jreg;

 data = ast_mindwm(ast, 0x1e6e2100) & 0x01;
 if (!data) {

  if (ast->dp501_fw_addr) {
   fw_addr = ast->dp501_fw_addr;
   len = 32*1024;
  } else {
   if (!ast->dp501_fw &&
       ast_load_dp501_microcode(dev) < 0)
    return 0;

   fw_addr = (u8 *)ast->dp501_fw->data;
   len = ast->dp501_fw->size;
  }

  ast_moutdwm(ast, 0x1e6e2000, 0x1688a8a8);
  data = ast_mindwm(ast, 0x1e6e0004);
  switch (data & 0x03) {
  case 0:
   boot_address = 0x44000000;
   break;
  default:
  case 1:
   boot_address = 0x48000000;
   break;
  case 2:
   boot_address = 0x50000000;
   break;
  case 3:
   boot_address = 0x60000000;
   break;
  }
  boot_address -= 0x200000;


  for (i = 0; i < len; i += 4) {
   data = *(u32 *)(fw_addr + i);
   ast_moutdwm(ast, boot_address + i, data);
  }


  ast_moutdwm(ast, 0x1e6e2000, 0x1688a8a8);


  ast_moutdwm(ast, 0x1e6e2104, 0x80000000 + boot_address);
  ast_moutdwm(ast, 0x1e6e2100, 1);


  data = ast_mindwm(ast, 0x1e6e2040) & 0xfffff1ff;
  data |= 0x800;
  ast_moutdwm(ast, 0x1e6e2040, data);

  jreg = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0x99, 0xfc);
  jreg |= 0x02;
  ast_set_index_reg(ast, AST_IO_CRTC_PORT, 0x99, jreg);
 }
 return 1;
}
