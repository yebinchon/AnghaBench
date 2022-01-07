
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device_pci {int pdev; } ;
struct nvkm_device {int dummy; } ;
typedef int resource_size_t ;


 struct nvkm_device_pci* nvkm_device_pci (struct nvkm_device*) ;
 int pci_resource_len (int ,unsigned int) ;

__attribute__((used)) static resource_size_t
nvkm_device_pci_resource_size(struct nvkm_device *device, unsigned bar)
{
 struct nvkm_device_pci *pdev = nvkm_device_pci(device);
 return pci_resource_len(pdev->pdev, bar);
}
