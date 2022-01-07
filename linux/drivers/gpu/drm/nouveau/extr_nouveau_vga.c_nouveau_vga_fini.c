
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_drm {struct drm_device* dev; } ;
struct drm_device {int dev; int pdev; } ;


 int nouveau_is_optimus () ;
 scalar_t__ nouveau_is_v1_dsm () ;
 int nouveau_pmops_runtime () ;
 scalar_t__ pci_is_thunderbolt_attached (int ) ;
 int vga_client_register (int ,int *,int *,int *) ;
 int vga_switcheroo_fini_domain_pm_ops (int ) ;
 int vga_switcheroo_unregister_client (int ) ;

void
nouveau_vga_fini(struct nouveau_drm *drm)
{
 struct drm_device *dev = drm->dev;
 bool runtime = nouveau_pmops_runtime();


 if (!dev->pdev)
  return;

 vga_client_register(dev->pdev, ((void*)0), ((void*)0), ((void*)0));

 if (pci_is_thunderbolt_attached(dev->pdev))
  return;

 vga_switcheroo_unregister_client(dev->pdev);
 if (runtime && nouveau_is_v1_dsm() && !nouveau_is_optimus())
  vga_switcheroo_fini_domain_pm_ops(drm->dev->dev);
}
