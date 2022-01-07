
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static int
gp10b_ibus_init(struct nvkm_subdev *ibus)
{
 struct nvkm_device *device = ibus->device;

 nvkm_wr32(device, 0x1200a8, 0x0);


 nvkm_wr32(device, 0x12004c, 0x4);
 nvkm_wr32(device, 0x122204, 0x2);
 nvkm_rd32(device, 0x122204);


 nvkm_wr32(device, 0x009080, 0x800186a0);

 return 0;
}
