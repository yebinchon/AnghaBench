
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_bus {TYPE_1__ subdev; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
nv04_bus_init(struct nvkm_bus *bus)
{
 struct nvkm_device *device = bus->subdev.device;
 nvkm_wr32(device, 0x001100, 0xffffffff);
 nvkm_wr32(device, 0x001140, 0x00000111);
}
