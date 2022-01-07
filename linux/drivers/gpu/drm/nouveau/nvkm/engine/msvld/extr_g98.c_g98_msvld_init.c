
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nvkm_falcon {TYPE_2__ engine; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
g98_msvld_init(struct nvkm_falcon *msvld)
{
 struct nvkm_device *device = msvld->engine.subdev.device;
 nvkm_wr32(device, 0x084010, 0x0000ffd2);
 nvkm_wr32(device, 0x08401c, 0x0000fff2);
}
