
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_device {int dummy; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;

u32
gf100_ram_probe_fbpa_amount(struct nvkm_device *device, int fbpa)
{
 return nvkm_rd32(device, 0x11020c + (fbpa * 0x1000));
}
