
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int pdev; } ;
struct ast_private {int fb_mtrr; struct drm_device* dev; } ;


 int arch_io_free_memtype_wc (int ,int ) ;
 int arch_phys_wc_del (int ) ;
 int drm_vram_helper_release_mm (struct drm_device*) ;
 int pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;

void ast_mm_fini(struct ast_private *ast)
{
 struct drm_device *dev = ast->dev;

 drm_vram_helper_release_mm(dev);

 arch_phys_wc_del(ast->fb_mtrr);
 arch_io_free_memtype_wc(pci_resource_start(dev->pdev, 0),
    pci_resource_len(dev->pdev, 0));
}
