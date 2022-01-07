
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_fuse {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;


 scalar_t__ nvkm_rd32 (struct nvkm_device*,scalar_t__) ;

__attribute__((used)) static u32
gm107_fuse_read(struct nvkm_fuse *fuse, u32 addr)
{
 struct nvkm_device *device = fuse->subdev.device;
 return nvkm_rd32(device, 0x021100 + addr);
}
