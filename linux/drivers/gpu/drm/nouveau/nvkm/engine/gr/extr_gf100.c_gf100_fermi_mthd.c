
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_object {int dummy; } ;


 int EINVAL ;


 int gf100_fermi_mthd_zbc_color (struct nvkm_object*,void*,int) ;
 int gf100_fermi_mthd_zbc_depth (struct nvkm_object*,void*,int) ;
 int nvif_ioctl (struct nvkm_object*,char*,int) ;

__attribute__((used)) static int
gf100_fermi_mthd(struct nvkm_object *object, u32 mthd, void *data, u32 size)
{
 nvif_ioctl(object, "fermi mthd %08x\n", mthd);
 switch (mthd) {
 case 129:
  return gf100_fermi_mthd_zbc_color(object, data, size);
 case 128:
  return gf100_fermi_mthd_zbc_depth(object, data, size);
 default:
  break;
 }
 return -EINVAL;
}
