
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct nvkm_bar {TYPE_1__ subdev; } ;
struct nv50_bar {TYPE_3__* bar1; } ;
struct TYPE_6__ {TYPE_2__* node; } ;
struct TYPE_5__ {int offset; } ;


 struct nv50_bar* nv50_bar (struct nvkm_bar*) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
nv50_bar_bar1_init(struct nvkm_bar *base)
{
 struct nvkm_device *device = base->subdev.device;
 struct nv50_bar *bar = nv50_bar(base);
 nvkm_wr32(device, 0x001708, 0x80000000 | bar->bar1->node->offset >> 4);
}
