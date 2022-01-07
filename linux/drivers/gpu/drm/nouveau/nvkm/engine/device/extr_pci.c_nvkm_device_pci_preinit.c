
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device_pci {int suspend; int pdev; } ;
struct nvkm_device {int dummy; } ;


 struct nvkm_device_pci* nvkm_device_pci (struct nvkm_device*) ;
 int pci_enable_device (int ) ;
 int pci_set_master (int ) ;

__attribute__((used)) static int
nvkm_device_pci_preinit(struct nvkm_device *device)
{
 struct nvkm_device_pci *pdev = nvkm_device_pci(device);
 if (pdev->suspend) {
  int ret = pci_enable_device(pdev->pdev);
  if (ret)
   return ret;
  pci_set_master(pdev->pdev);
  pdev->suspend = 0;
 }
 return 0;
}
