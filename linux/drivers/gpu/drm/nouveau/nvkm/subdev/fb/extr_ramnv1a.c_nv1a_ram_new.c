
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int bus; } ;
struct nvkm_ram {int dummy; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct nvkm_fb {TYPE_2__ subdev; } ;
struct TYPE_3__ {int chipset; int dev; } ;


 int ENODEV ;
 int NVKM_RAM_TYPE_STOLEN ;
 int PCI_DEVFN (int ,int) ;
 scalar_t__ dev_is_pci (int ) ;
 int nv04_ram_func ;
 int nvkm_error (TYPE_2__*,char*) ;
 int nvkm_ram_new_ (int *,struct nvkm_fb*,int ,int,struct nvkm_ram**) ;
 int pci_domain_nr (int ) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int,int ,int ) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

int
nv1a_ram_new(struct nvkm_fb *fb, struct nvkm_ram **pram)
{
 struct pci_dev *bridge;
 u32 mem, mib;
 int domain = 0;
 struct pci_dev *pdev = ((void*)0);

 if (dev_is_pci(fb->subdev.device->dev))
  pdev = to_pci_dev(fb->subdev.device->dev);

 if (pdev)
  domain = pci_domain_nr(pdev->bus);

 bridge = pci_get_domain_bus_and_slot(domain, 0, PCI_DEVFN(0, 1));
 if (!bridge) {
  nvkm_error(&fb->subdev, "no bridge device\n");
  return -ENODEV;
 }

 if (fb->subdev.device->chipset == 0x1a) {
  pci_read_config_dword(bridge, 0x7c, &mem);
  mib = ((mem >> 6) & 31) + 1;
 } else {
  pci_read_config_dword(bridge, 0x84, &mem);
  mib = ((mem >> 4) & 127) + 1;
 }

 return nvkm_ram_new_(&nv04_ram_func, fb, NVKM_RAM_TYPE_STOLEN,
        mib * 1024 * 1024, pram);
}
