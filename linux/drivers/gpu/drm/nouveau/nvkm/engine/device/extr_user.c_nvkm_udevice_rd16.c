
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct nvkm_udevice {int device; } ;
struct nvkm_object {int dummy; } ;


 int nvkm_rd16 (int ,int ) ;
 struct nvkm_udevice* nvkm_udevice (struct nvkm_object*) ;

__attribute__((used)) static int
nvkm_udevice_rd16(struct nvkm_object *object, u64 addr, u16 *data)
{
 struct nvkm_udevice *udev = nvkm_udevice(object);
 *data = nvkm_rd16(udev->device, addr);
 return 0;
}
