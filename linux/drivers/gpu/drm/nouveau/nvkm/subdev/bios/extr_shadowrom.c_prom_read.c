
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct nvkm_bios {int * data; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;

__attribute__((used)) static u32
prom_read(void *data, u32 offset, u32 length, struct nvkm_bios *bios)
{
 struct nvkm_device *device = data;
 u32 i;
 if (offset + length <= 0x00100000) {
  for (i = offset; i < offset + length; i += 4)
   *(u32 *)&bios->data[i] = nvkm_rd32(device, 0x300000 + i);
  return length;
 }
 return 0;
}
