
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_devinit {int post; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct nv50_devinit {TYPE_1__ base; } ;


 int BIT (int) ;
 struct nv50_devinit* nv50_devinit (struct nvkm_devinit*) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

void
gf100_devinit_preinit(struct nvkm_devinit *base)
{
 struct nv50_devinit *init = nv50_devinit(base);
 struct nvkm_subdev *subdev = &init->base.subdev;
 struct nvkm_device *device = subdev->device;





 base->post = ((nvkm_rd32(device, 0x2240c) & BIT(1)) == 0);
}
