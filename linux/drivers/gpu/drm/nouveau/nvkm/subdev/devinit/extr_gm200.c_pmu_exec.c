
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nv50_devinit {TYPE_2__ base; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
pmu_exec(struct nv50_devinit *init, u32 init_addr)
{
 struct nvkm_device *device = init->base.subdev.device;
 nvkm_wr32(device, 0x10a104, init_addr);
 nvkm_wr32(device, 0x10a10c, 0x00000000);
 nvkm_wr32(device, 0x10a100, 0x00000002);
}
