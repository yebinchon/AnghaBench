
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvkm_pci_func {scalar_t__ msi_rearm; } ;
struct TYPE_6__ {int speed; int width; } ;
struct nvkm_pci {int irq; int msi; int subdev; TYPE_4__* pdev; TYPE_2__ pcie; struct nvkm_pci_func const* func; } ;
struct nvkm_device {scalar_t__ type; int cfgopt; int chipset; TYPE_1__* func; } ;
struct TYPE_8__ {int device; } ;
struct TYPE_7__ {TYPE_4__* pdev; } ;
struct TYPE_5__ {TYPE_3__* (* pci ) (struct nvkm_device*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NVKM_DEVICE_AGP ;
 struct nvkm_pci* kzalloc (int,int ) ;
 int nvkm_agp_ctor (struct nvkm_pci*) ;
 int nvkm_boolopt (int ,char*,int) ;
 int nvkm_debug (int *,char*) ;
 int nvkm_pci_func ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;
 scalar_t__ pci_enable_msi (TYPE_4__*) ;
 TYPE_3__* stub1 (struct nvkm_device*) ;

int
nvkm_pci_new_(const struct nvkm_pci_func *func, struct nvkm_device *device,
       int index, struct nvkm_pci **ppci)
{
 struct nvkm_pci *pci;

 if (!(pci = *ppci = kzalloc(sizeof(**ppci), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_subdev_ctor(&nvkm_pci_func, device, index, &pci->subdev);
 pci->func = func;
 pci->pdev = device->func->pci(device)->pdev;
 pci->irq = -1;
 pci->pcie.speed = -1;
 pci->pcie.width = -1;

 if (device->type == NVKM_DEVICE_AGP)
  nvkm_agp_ctor(pci);

 switch (pci->pdev->device & 0x0ff0) {
 case 0x00f0:
 case 0x02e0:

  break;
 default:
  switch (device->chipset) {
  case 0xaa:

   break;
  default:
   pci->msi = 1;
   break;
  }
 }





 pci->msi = nvkm_boolopt(device->cfgopt, "NvMSI", pci->msi);
 if (pci->msi && func->msi_rearm) {
  pci->msi = pci_enable_msi(pci->pdev) == 0;
  if (pci->msi)
   nvkm_debug(&pci->subdev, "MSI enabled\n");
 } else {
  pci->msi = 0;
 }

 return 0;
}
