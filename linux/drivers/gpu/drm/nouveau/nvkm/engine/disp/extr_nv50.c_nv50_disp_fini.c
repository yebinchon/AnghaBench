
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv50_disp {TYPE_3__ base; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
nv50_disp_fini(struct nv50_disp *disp)
{
 struct nvkm_device *device = disp->base.engine.subdev.device;

 nvkm_wr32(device, 0x610024, 0x00000000);
 nvkm_wr32(device, 0x610020, 0x00000000);
}
