
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_device {scalar_t__ card_type; int chipset; } ;


 scalar_t__ NV_50 ;
 int nvkm_rdvgac (struct nvkm_device*,int,int) ;
 int nvkm_wrvgac (struct nvkm_device*,int ,int,int) ;

void
nvkm_wrvgaowner(struct nvkm_device *device, u8 select)
{
 if (device->card_type < NV_50) {
  u8 owner = (select == 1) ? 3 : select;
  if (device->chipset == 0x11) {

   nvkm_rdvgac(device, 0, 0x1f);
   nvkm_rdvgac(device, 1, 0x1f);
  }

  nvkm_wrvgac(device, 0, 0x44, owner);

  if (device->chipset == 0x11) {
   nvkm_wrvgac(device, 0, 0x2e, owner);
   nvkm_wrvgac(device, 0, 0x2e, owner);
  }
 }
}
