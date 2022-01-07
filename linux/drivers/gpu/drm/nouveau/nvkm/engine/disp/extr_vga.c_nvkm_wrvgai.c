
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvkm_device {int dummy; } ;


 int nvkm_wrvgac (struct nvkm_device*,int,int ,int ) ;
 int nvkm_wrvgag (struct nvkm_device*,int,int ,int ) ;
 int nvkm_wrvgas (struct nvkm_device*,int,int ,int ) ;

void
nvkm_wrvgai(struct nvkm_device *device, int head, u16 port, u8 index, u8 value)
{
 if (port == 0x03c4) nvkm_wrvgas(device, head, index, value);
 else if (port == 0x03ce) nvkm_wrvgag(device, head, index, value);
 else if (port == 0x03d4) nvkm_wrvgac(device, head, index, value);
}
