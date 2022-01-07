
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_drm {int vga_pm_domain; struct drm_device* dev; } ;
struct drm_device {int dev; int pdev; } ;


 int nouveau_is_optimus () ;
 scalar_t__ nouveau_is_v1_dsm () ;
 int nouveau_pmops_runtime () ;
 int nouveau_switcheroo_ops ;
 int nouveau_vga_set_decode ;
 scalar_t__ pci_is_thunderbolt_attached (int ) ;
 int vga_client_register (int ,struct drm_device*,int *,int ) ;
 int vga_switcheroo_init_domain_pm_ops (int ,int *) ;
 int vga_switcheroo_register_client (int ,int *,int) ;

void
nouveau_vga_init(struct nouveau_drm *drm)
{
 struct drm_device *dev = drm->dev;
 bool runtime = nouveau_pmops_runtime();


 if (!dev->pdev)
  return;

 vga_client_register(dev->pdev, dev, ((void*)0), nouveau_vga_set_decode);


 if (pci_is_thunderbolt_attached(dev->pdev))
  return;

 vga_switcheroo_register_client(dev->pdev, &nouveau_switcheroo_ops, runtime);

 if (runtime && nouveau_is_v1_dsm() && !nouveau_is_optimus())
  vga_switcheroo_init_domain_pm_ops(drm->dev->dev, &drm->vga_pm_domain);
}
