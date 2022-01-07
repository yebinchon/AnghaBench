
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct drm_device {TYPE_2__* pdev; struct ast_private* dev_private; } ;
struct device_node {int dummy; } ;
struct ast_private {int config_mode; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {scalar_t__ device; TYPE_1__ dev; } ;


 int AST_IO_CRTC_PORT ;
 int DRM_INFO (char*) ;
 scalar_t__ PCI_CHIP_AST2000 ;
 int ast_get_index_reg_mask (struct ast_private*,int ,int,int) ;
 void* ast_read32 (struct ast_private*,int) ;
 int ast_use_defaults ;
 int ast_use_dt ;
 int ast_use_p2a ;
 int ast_write32 (struct ast_private*,int,int) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static void ast_detect_config_mode(struct drm_device *dev, u32 *scu_rev)
{
 struct device_node *np = dev->pdev->dev.of_node;
 struct ast_private *ast = dev->dev_private;
 uint32_t data, jregd0, jregd1;


 ast->config_mode = ast_use_defaults;
 *scu_rev = 0xffffffff;


 if (np && !of_property_read_u32(np, "aspeed,scu-revision-id",
     scu_rev)) {

  ast->config_mode = ast_use_dt;
  DRM_INFO("Using device-tree for configuration\n");
  return;
 }


 if (dev->pdev->device != PCI_CHIP_AST2000)
  return;






 jregd0 = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xd0, 0xff);
 jregd1 = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xd1, 0xff);
 if (!(jregd0 & 0x80) || !(jregd1 & 0x10)) {

  data = ast_read32(ast, 0xf004);
  if (data != 0xFFFFFFFF) {

   ast->config_mode = ast_use_p2a;

   DRM_INFO("Using P2A bridge for configuration\n");


   ast_write32(ast, 0xf004, 0x1e6e0000);
   ast_write32(ast, 0xf000, 0x1);
   *scu_rev = ast_read32(ast, 0x1207c);
   return;
  }
 }


 DRM_INFO("P2A bridge disabled, using default configuration\n");
}
