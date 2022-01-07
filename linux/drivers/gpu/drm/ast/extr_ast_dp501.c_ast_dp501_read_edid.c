
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int dummy; } ;


 int ast_mindwm (struct ast_private*,int) ;
 int get_fw_base (struct ast_private*) ;

bool ast_dp501_read_edid(struct drm_device *dev, u8 *ediddata)
{
 struct ast_private *ast = dev->dev_private;
 u32 i, boot_address, offset, data;

 boot_address = get_fw_base(ast);


 offset = 0xf000;
 data = ast_mindwm(ast, boot_address + offset);
 if ((data & 0xf0) != 0x10)
  return 0;


 offset = 0xf010;
 data = ast_mindwm(ast, boot_address + offset);
 if (!(data & 0x01))
  return 0;


 offset = 0xf020;
 for (i = 0; i < 128; i += 4) {
  data = ast_mindwm(ast, boot_address + offset + i);
  *(u32 *)(ediddata + i) = data;
 }

 return 1;
}
