
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_secboot {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;


 int BIT (int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static bool
gp102_secboot_scrub_required(struct nvkm_secboot *sb)
{
 struct nvkm_subdev *subdev = &sb->subdev;
 struct nvkm_device *device = subdev->device;
 u32 reg;

 nvkm_wr32(device, 0x100cd0, 0x2);
 reg = nvkm_rd32(device, 0x100cd0);

 return (reg & BIT(4));
}
