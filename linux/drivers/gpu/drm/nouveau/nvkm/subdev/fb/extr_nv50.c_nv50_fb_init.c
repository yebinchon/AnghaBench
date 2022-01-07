
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_fb {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct nv50_fb {int r100c08; TYPE_3__* func; TYPE_2__ base; } ;
struct TYPE_6__ {int trap; } ;


 struct nv50_fb* nv50_fb (struct nvkm_fb*) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
nv50_fb_init(struct nvkm_fb *base)
{
 struct nv50_fb *fb = nv50_fb(base);
 struct nvkm_device *device = fb->base.subdev.device;





 nvkm_wr32(device, 0x100c08, fb->r100c08 >> 8);



 nvkm_wr32(device, 0x100c90, fb->func->trap);
}
