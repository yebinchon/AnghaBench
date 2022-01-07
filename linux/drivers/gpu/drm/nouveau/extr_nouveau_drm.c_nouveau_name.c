
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_device {int dev; scalar_t__ pdev; } ;


 int nouveau_pci_name (scalar_t__) ;
 int nouveau_platform_name (int ) ;
 int to_platform_device (int ) ;

__attribute__((used)) static u64
nouveau_name(struct drm_device *dev)
{
 if (dev->pdev)
  return nouveau_pci_name(dev->pdev);
 else
  return nouveau_platform_name(to_platform_device(dev->dev));
}
