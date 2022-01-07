
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int pdev; struct ast_private* dev_private; } ;
struct ast_private {scalar_t__ ioregs; scalar_t__ regs; struct ast_private* dp501_fw_addr; } ;


 int AST_IO_CRTC_PORT ;
 scalar_t__ AST_IO_MM_OFFSET ;
 int ast_mm_fini (struct ast_private*) ;
 int ast_mode_fini (struct drm_device*) ;
 int ast_release_firmware (struct drm_device*) ;
 int ast_set_index_reg (struct ast_private*,int ,int,int) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int kfree (struct ast_private*) ;
 int pci_iounmap (int ,scalar_t__) ;

void ast_driver_unload(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;


 ast_set_index_reg(ast, AST_IO_CRTC_PORT, 0xa1, 0x04);

 ast_release_firmware(dev);
 kfree(ast->dp501_fw_addr);
 ast_mode_fini(dev);
 drm_mode_config_cleanup(dev);

 ast_mm_fini(ast);
 if (ast->ioregs != ast->regs + AST_IO_MM_OFFSET)
  pci_iounmap(dev->pdev, ast->ioregs);
 pci_iounmap(dev->pdev, ast->regs);
 kfree(ast);
}
