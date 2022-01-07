
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct nvkm_bar {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nv50_bar {TYPE_2__ base; } ;


 struct nv50_bar* nv50_bar (struct nvkm_bar*) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
nv50_bar_init(struct nvkm_bar *base)
{
 struct nv50_bar *bar = nv50_bar(base);
 struct nvkm_device *device = bar->base.subdev.device;
 int i;

 for (i = 0; i < 8; i++)
  nvkm_wr32(device, 0x001900 + (i * 4), 0x00000000);
}
