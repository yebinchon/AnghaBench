
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_mc {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
nv44_mc_init(struct nvkm_mc *mc)
{
 struct nvkm_device *device = mc->subdev.device;
 u32 tmp = nvkm_rd32(device, 0x10020c);

 nvkm_wr32(device, 0x000200, 0xffffffff);

 nvkm_wr32(device, 0x001700, tmp);
 nvkm_wr32(device, 0x001704, 0);
 nvkm_wr32(device, 0x001708, 0);
 nvkm_wr32(device, 0x00170c, tmp);
}
