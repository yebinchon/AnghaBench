
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvkm_device {int dummy; } ;


 int nvkm_rdvgac (struct nvkm_device*,int,int) ;
 int nvkm_rdvgag (struct nvkm_device*,int,int) ;
 int nvkm_rdvgas (struct nvkm_device*,int,int) ;

u8
nvkm_rdvgai(struct nvkm_device *device, int head, u16 port, u8 index)
{
 if (port == 0x03c4) return nvkm_rdvgas(device, head, index);
 if (port == 0x03ce) return nvkm_rdvgag(device, head, index);
 if (port == 0x03d4) return nvkm_rdvgac(device, head, index);
 return 0x00;
}
