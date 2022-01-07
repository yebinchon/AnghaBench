
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct nvkm_bar {TYPE_1__ subdev; } ;
struct gf100_bar {TYPE_2__* bar; } ;
struct TYPE_4__ {int inst; } ;


 struct gf100_bar* gf100_bar (struct nvkm_bar*) ;
 int nvkm_memory_addr (int ) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
tu102_bar_bar1_init(struct nvkm_bar *base)
{
 struct nvkm_device *device = base->subdev.device;
 struct gf100_bar *bar = gf100_bar(base);
 const u32 addr = nvkm_memory_addr(bar->bar[1].inst) >> 12;
 nvkm_wr32(device, 0xb80f40, 0x80000000 | addr);
}
