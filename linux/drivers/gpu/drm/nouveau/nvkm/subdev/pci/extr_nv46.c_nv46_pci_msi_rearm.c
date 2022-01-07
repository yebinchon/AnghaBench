
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct nvkm_pci {TYPE_1__ subdev; } ;
struct nvkm_device {TYPE_2__* func; } ;
struct TYPE_6__ {struct pci_dev* pdev; } ;
struct TYPE_5__ {TYPE_3__* (* pci ) (struct nvkm_device*) ;} ;


 int pci_write_config_byte (struct pci_dev*,int,int) ;
 TYPE_3__* stub1 (struct nvkm_device*) ;

void
nv46_pci_msi_rearm(struct nvkm_pci *pci)
{
 struct nvkm_device *device = pci->subdev.device;
 struct pci_dev *pdev = device->func->pci(device)->pdev;
 pci_write_config_byte(pdev, 0x68, 0xff);
}
