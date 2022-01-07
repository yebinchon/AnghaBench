
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvkm_udevice {int device; } ;
struct nvkm_object {int dummy; } ;


 struct nvkm_udevice* nvkm_udevice (struct nvkm_object*) ;
 int nvkm_wr32 (int ,int ,int ) ;

__attribute__((used)) static int
nvkm_udevice_wr32(struct nvkm_object *object, u64 addr, u32 data)
{
 struct nvkm_udevice *udev = nvkm_udevice(object);
 nvkm_wr32(udev->device, addr, data);
 return 0;
}
