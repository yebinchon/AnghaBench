
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_volt {TYPE_1__ subdev; } ;
struct nvkm_fuse {int dummy; } ;
struct nvkm_device {struct nvkm_fuse* fuse; } ;


 int EINVAL ;
 int nvkm_fuse_read (struct nvkm_fuse*,int) ;

__attribute__((used)) static int
gf117_volt_speedo_read(struct nvkm_volt *volt)
{
 struct nvkm_device *device = volt->subdev.device;
 struct nvkm_fuse *fuse = device->fuse;

 if (!fuse)
  return -EINVAL;

 return nvkm_fuse_read(fuse, 0x3a8);
}
