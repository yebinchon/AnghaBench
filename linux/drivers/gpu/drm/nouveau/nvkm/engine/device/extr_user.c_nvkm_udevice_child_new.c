
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_udevice {int device; } ;
struct nvkm_oclass {struct nvkm_device_oclass* priv; int parent; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_device_oclass {int (* ctor ) (int ,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;} ;


 struct nvkm_udevice* nvkm_udevice (int ) ;
 int stub1 (int ,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;

__attribute__((used)) static int
nvkm_udevice_child_new(const struct nvkm_oclass *oclass,
         void *data, u32 size, struct nvkm_object **pobject)
{
 struct nvkm_udevice *udev = nvkm_udevice(oclass->parent);
 const struct nvkm_device_oclass *sclass = oclass->priv;
 return sclass->ctor(udev->device, oclass, data, size, pobject);
}
