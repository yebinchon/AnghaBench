
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

bool ast_backup_fw(struct drm_device *dev, u8 *addr, u32 size)
{
 struct ast_private *ast = dev->dev_private;
 u32 i, data;
 u32 boot_address;

 data = ast_mindwm(ast, 0x1e6e2100) & 0x01;
 if (data) {
  boot_address = get_fw_base(ast);
  for (i = 0; i < size; i += 4)
   *(u32 *)(addr + i) = ast_mindwm(ast, boot_address + i);
  return 1;
 }
 return 0;
}
