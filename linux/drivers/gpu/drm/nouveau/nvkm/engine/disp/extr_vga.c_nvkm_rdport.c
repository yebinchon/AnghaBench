
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvkm_device {scalar_t__ card_type; } ;


 scalar_t__ NV_40 ;
 scalar_t__ NV_50 ;
 int nvkm_rd08 (struct nvkm_device*,int) ;

u8
nvkm_rdport(struct nvkm_device *device, int head, u16 port)
{
 if (device->card_type >= NV_50)
  return nvkm_rd08(device, 0x601000 + port);

 if (port == 0x03c0 || port == 0x03c1 ||
     port == 0x03c2 || port == 0x03da ||
     port == 0x03d4 || port == 0x03d5)
  return nvkm_rd08(device, 0x601000 + (head * 0x2000) + port);

 if (port == 0x03c2 || port == 0x03cc ||
     port == 0x03c4 || port == 0x03c5 ||
     port == 0x03ce || port == 0x03cf) {
  if (device->card_type < NV_40)
   head = 0;
  return nvkm_rd08(device, 0x0c0000 + (head * 0x2000) + port);
 }

 return 0x00;
}
