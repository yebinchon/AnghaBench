
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_udevice {int dummy; } ;
struct nvkm_object {int dummy; } ;


 int EINVAL ;


 int nvif_ioctl (struct nvkm_object*,char*,int) ;
 struct nvkm_udevice* nvkm_udevice (struct nvkm_object*) ;
 int nvkm_udevice_info (struct nvkm_udevice*,void*,int) ;
 int nvkm_udevice_time (struct nvkm_udevice*,void*,int) ;

__attribute__((used)) static int
nvkm_udevice_mthd(struct nvkm_object *object, u32 mthd, void *data, u32 size)
{
 struct nvkm_udevice *udev = nvkm_udevice(object);
 nvif_ioctl(object, "device mthd %08x\n", mthd);
 switch (mthd) {
 case 129:
  return nvkm_udevice_info(udev, data, size);
 case 128:
  return nvkm_udevice_time(udev, data, size);
 default:
  break;
 }
 return -EINVAL;
}
