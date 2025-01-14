
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int dummy; } ;


 int ast_mindwm (struct ast_private*,int) ;
 int get_fw_base (struct ast_private*) ;

u8 ast_get_dp501_max_clk(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;
 u32 boot_address, offset, data;
 u8 linkcap[4], linkrate, linklanes, maxclk = 0xff;

 boot_address = get_fw_base(ast);


 offset = 0xf000;
 data = ast_mindwm(ast, boot_address + offset);
 if ((data & 0xf0) != 0x10)
  return maxclk;


 offset = 0xf014;
 *(u32 *)linkcap = ast_mindwm(ast, boot_address + offset);
 if (linkcap[2] == 0) {
  linkrate = linkcap[0];
  linklanes = linkcap[1];
  data = (linkrate == 0x0a) ? (90 * linklanes) : (54 * linklanes);
  if (data > 0xff)
   data = 0xff;
  maxclk = (u8)data;
 }
 return maxclk;
}
