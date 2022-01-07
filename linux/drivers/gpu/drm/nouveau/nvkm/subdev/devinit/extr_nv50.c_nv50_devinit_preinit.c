
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_devinit {int post; struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;


 unsigned long long NVKM_ENGINE_DISP ;
 int nvkm_debug (struct nvkm_subdev*,char*) ;
 unsigned long long nvkm_devinit_disable (struct nvkm_devinit*) ;
 int nvkm_rdvgac (struct nvkm_device*,int ,int) ;

void
nv50_devinit_preinit(struct nvkm_devinit *base)
{
 struct nvkm_subdev *subdev = &base->subdev;
 struct nvkm_device *device = subdev->device;





 if (!base->post) {
  u64 disable = nvkm_devinit_disable(base);
  if (disable & (1ULL << NVKM_ENGINE_DISP))
   base->post = 1;
 }




 if (!base->post) {
  if (!nvkm_rdvgac(device, 0, 0x00) &&
      !nvkm_rdvgac(device, 0, 0x1a)) {
   nvkm_debug(subdev, "adaptor not initialised\n");
   base->post = 1;
  }
 }
}
