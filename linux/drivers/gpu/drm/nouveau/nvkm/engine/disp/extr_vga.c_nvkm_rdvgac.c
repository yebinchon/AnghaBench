
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_device {int dummy; } ;


 int nvkm_rdport (struct nvkm_device*,int,int) ;
 int nvkm_wrport (struct nvkm_device*,int,int,int ) ;

u8
nvkm_rdvgac(struct nvkm_device *device, int head, u8 index)
{
 nvkm_wrport(device, head, 0x03d4, index);
 return nvkm_rdport(device, head, 0x03d5);
}
