
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_devinit {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {int post; struct nvkm_subdev subdev; } ;
struct nv04_devinit {scalar_t__ owner; TYPE_1__ base; } ;


 struct nv04_devinit* nv04_devinit (struct nvkm_devinit*) ;
 int nvkm_debug (struct nvkm_subdev*,char*) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_rdvgac (struct nvkm_device*,int ,int) ;
 scalar_t__ nvkm_rdvgaowner (struct nvkm_device*) ;
 int nvkm_wrvgaowner (struct nvkm_device*,int ) ;

void
nv04_devinit_preinit(struct nvkm_devinit *base)
{
 struct nv04_devinit *init = nv04_devinit(base);
 struct nvkm_subdev *subdev = &init->base.subdev;
 struct nvkm_device *device = subdev->device;


 nvkm_mask(device, 0x000200, 0x00000001, 0x00000001);


 if (init->owner < 0)
  init->owner = nvkm_rdvgaowner(device);
 nvkm_wrvgaowner(device, 0);

 if (!init->base.post) {
  u32 htotal = nvkm_rdvgac(device, 0, 0x06);
  htotal |= (nvkm_rdvgac(device, 0, 0x07) & 0x01) << 8;
  htotal |= (nvkm_rdvgac(device, 0, 0x07) & 0x20) << 4;
  htotal |= (nvkm_rdvgac(device, 0, 0x25) & 0x01) << 10;
  htotal |= (nvkm_rdvgac(device, 0, 0x41) & 0x01) << 11;
  if (!htotal) {
   nvkm_debug(subdev, "adaptor not initialised\n");
   init->base.post = 1;
  }
 }
}
