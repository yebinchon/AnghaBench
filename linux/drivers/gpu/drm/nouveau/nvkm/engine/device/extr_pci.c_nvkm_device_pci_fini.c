
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device_pci {int suspend; int pdev; } ;
struct nvkm_device {int dummy; } ;


 struct nvkm_device_pci* nvkm_device_pci (struct nvkm_device*) ;
 int pci_disable_device (int ) ;

__attribute__((used)) static void
nvkm_device_pci_fini(struct nvkm_device *device, bool suspend)
{
 struct nvkm_device_pci *pdev = nvkm_device_pci(device);
 if (suspend) {
  pci_disable_device(pdev->pdev);
  pdev->suspend = 1;
 }
}
