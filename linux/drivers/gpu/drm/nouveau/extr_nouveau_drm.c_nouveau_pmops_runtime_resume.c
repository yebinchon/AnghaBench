
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct nvif_device {int object; } ;
struct TYPE_2__ {struct nvif_device device; } ;
struct nouveau_drm {int hpd_work; TYPE_1__ client; } ;
struct drm_device {int switch_power_state; } ;
struct device {int dummy; } ;


 int DRM_SWITCH_POWER_ON ;
 int EBUSY ;
 int NV_ERROR (struct nouveau_drm*,char*,int) ;
 int PCI_D0 ;
 int nouveau_do_resume (struct drm_device*,int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_pmops_runtime () ;
 int nvif_mask (int *,int,int,int) ;
 int pci_enable_device (struct pci_dev*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pm_runtime_forbid (struct device*) ;
 int schedule_work (int *) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int
nouveau_pmops_runtime_resume(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct drm_device *drm_dev = pci_get_drvdata(pdev);
 struct nouveau_drm *drm = nouveau_drm(drm_dev);
 struct nvif_device *device = &nouveau_drm(drm_dev)->client.device;
 int ret;

 if (!nouveau_pmops_runtime()) {
  pm_runtime_forbid(dev);
  return -EBUSY;
 }

 pci_set_power_state(pdev, PCI_D0);
 pci_restore_state(pdev);
 ret = pci_enable_device(pdev);
 if (ret)
  return ret;
 pci_set_master(pdev);

 ret = nouveau_do_resume(drm_dev, 1);
 if (ret) {
  NV_ERROR(drm, "resume failed with: %d\n", ret);
  return ret;
 }


 nvif_mask(&device->object, 0x088488, (1 << 25), (1 << 25));
 drm_dev->switch_power_state = DRM_SWITCH_POWER_ON;


 schedule_work(&nouveau_drm(drm_dev)->hpd_work);

 return ret;
}
