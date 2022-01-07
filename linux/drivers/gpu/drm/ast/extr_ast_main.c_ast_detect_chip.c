
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_device {TYPE_1__* pdev; struct ast_private* dev_private; } ;
struct ast_private {int chip; int vga2_clone; int support_wide_screen; int tx_chip_type; int * dp501_fw_addr; } ;
struct TYPE_2__ {scalar_t__ device; int revision; } ;


 void* AST1100 ;


 int AST2100 ;
 int AST2150 ;
 int AST2200 ;
 int AST2300 ;
 int AST2400 ;
 int AST2500 ;
 int AST_IO_CRTC_PORT ;

 int AST_TX_NONE ;

 int DRM_INFO (char*) ;
 int GFP_KERNEL ;
 scalar_t__ PCI_CHIP_AST1180 ;
 int ast_backup_fw (struct drm_device*,int *,int) ;
 int ast_detect_config_mode (struct drm_device*,int*) ;
 int ast_enable_mmio (struct drm_device*) ;
 int ast_enable_vga (struct drm_device*) ;
 int ast_get_index_reg_mask (struct ast_private*,int ,int,int) ;
 int ast_is_vga_enabled (struct drm_device*) ;
 int ast_open_key (struct ast_private*) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;

__attribute__((used)) static int ast_detect_chip(struct drm_device *dev, bool *need_post)
{
 struct ast_private *ast = dev->dev_private;
 uint32_t jreg, scu_rev;







 if (!ast_is_vga_enabled(dev)) {
  ast_enable_vga(dev);
  DRM_INFO("VGA not enabled on entry, requesting chip POST\n");
  *need_post = 1;
 } else
  *need_post = 0;



 ast_open_key(ast);
 ast_enable_mmio(dev);


 ast_detect_config_mode(dev, &scu_rev);


 if (dev->pdev->device == PCI_CHIP_AST1180) {
  ast->chip = AST1100;
  DRM_INFO("AST 1180 detected\n");
 } else {
  if (dev->pdev->revision >= 0x40) {
   ast->chip = AST2500;
   DRM_INFO("AST 2500 detected\n");
  } else if (dev->pdev->revision >= 0x30) {
   ast->chip = AST2400;
   DRM_INFO("AST 2400 detected\n");
  } else if (dev->pdev->revision >= 0x20) {
   ast->chip = AST2300;
   DRM_INFO("AST 2300 detected\n");
  } else if (dev->pdev->revision >= 0x10) {
   switch (scu_rev & 0x0300) {
   case 0x0200:
    ast->chip = AST1100;
    DRM_INFO("AST 1100 detected\n");
    break;
   case 0x0100:
    ast->chip = AST2200;
    DRM_INFO("AST 2200 detected\n");
    break;
   case 0x0000:
    ast->chip = AST2150;
    DRM_INFO("AST 2150 detected\n");
    break;
   default:
    ast->chip = AST2100;
    DRM_INFO("AST 2100 detected\n");
    break;
   }
   ast->vga2_clone = 0;
  } else {
   ast->chip = 130;
   DRM_INFO("AST 2000 detected\n");
  }
 }


 switch (ast->chip) {
 case 131:
  ast->support_wide_screen = 1;
  break;
 case 130:
  ast->support_wide_screen = 0;
  break;
 default:
  jreg = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xd0, 0xff);
  if (!(jreg & 0x80))
   ast->support_wide_screen = 1;
  else if (jreg & 0x01)
   ast->support_wide_screen = 1;
  else {
   ast->support_wide_screen = 0;
   if (ast->chip == AST2300 &&
       (scu_rev & 0x300) == 0x0)
    ast->support_wide_screen = 1;
   if (ast->chip == AST2400 &&
       (scu_rev & 0x300) == 0x100)
    ast->support_wide_screen = 1;
   if (ast->chip == AST2500 &&
       scu_rev == 0x100)
    ast->support_wide_screen = 1;
  }
  break;
 }


 ast->tx_chip_type = AST_TX_NONE;
 if (!*need_post) {
  jreg = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xa3, 0xff);
  if (jreg & 0x80)
   ast->tx_chip_type = 128;
 }

 if ((ast->chip == AST2300) || (ast->chip == AST2400)) {





  jreg = ast_get_index_reg_mask(ast, AST_IO_CRTC_PORT, 0xd1, 0xff);
  switch (jreg) {
  case 0x04:
   ast->tx_chip_type = 128;
   break;
  case 0x08:
   ast->dp501_fw_addr = kzalloc(32*1024, GFP_KERNEL);
   if (ast->dp501_fw_addr) {

    if (ast_backup_fw(dev, ast->dp501_fw_addr, 32*1024)) {
     kfree(ast->dp501_fw_addr);
     ast->dp501_fw_addr = ((void*)0);
    }
   }

  case 0x0c:
   ast->tx_chip_type = 129;
  }
 }


 switch(ast->tx_chip_type) {
 case 128:
  DRM_INFO("Using Sil164 TMDS transmitter\n");
  break;
 case 129:
  DRM_INFO("Using DP501 DisplayPort transmitter\n");
  break;
 default:
  DRM_INFO("Analog VGA only\n");
 }
 return 0;
}
