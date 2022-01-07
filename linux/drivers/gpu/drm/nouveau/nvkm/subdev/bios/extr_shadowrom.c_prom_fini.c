
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_device {int pci; } ;


 int nvkm_pci_rom_shadow (int ,int) ;

__attribute__((used)) static void
prom_fini(void *data)
{
 struct nvkm_device *device = data;
 nvkm_pci_rom_shadow(device->pci, 1);
}
