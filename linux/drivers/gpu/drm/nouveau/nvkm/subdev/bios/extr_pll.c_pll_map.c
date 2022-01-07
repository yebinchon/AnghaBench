
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pll_mapping {int dummy; } ;
struct nvkm_device {int card_type; int chipset; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_bios {TYPE_1__ subdev; } ;
 struct pll_mapping* g84_pll_mapping ;
 struct pll_mapping* nv04_pll_mapping ;
 struct pll_mapping* nv40_pll_mapping ;
 struct pll_mapping* nv50_pll_mapping ;

__attribute__((used)) static struct pll_mapping *
pll_map(struct nvkm_bios *bios)
{
 struct nvkm_device *device = bios->subdev.device;
 switch (device->card_type) {
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
  return nv04_pll_mapping;
  break;
 case 129:
  return nv40_pll_mapping;
 case 128:
  if (device->chipset == 0x50)
   return nv50_pll_mapping;
  else
  if (device->chipset < 0xa3 ||
      device->chipset == 0xaa ||
      device->chipset == 0xac)
   return g84_pll_mapping;

 default:
  return ((void*)0);
 }
}
