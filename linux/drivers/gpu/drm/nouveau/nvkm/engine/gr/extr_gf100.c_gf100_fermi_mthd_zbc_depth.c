
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_object {int engine; } ;
struct gf100_gr {int dummy; } ;
struct fermi_a_zbc_depth_v0 {int format; int l2; int ds; } ;


 int EINVAL ;
 int ENOSPC ;
 int ENOSYS ;

 struct gf100_gr* gf100_gr (int ) ;
 int gf100_gr_zbc_depth_get (struct gf100_gr*,int,int ,int ) ;
 int nvif_unpack (int,void**,int *,struct fermi_a_zbc_depth_v0,int ,int ,int) ;
 int nvkm_gr (int ) ;

__attribute__((used)) static int
gf100_fermi_mthd_zbc_depth(struct nvkm_object *object, void *data, u32 size)
{
 struct gf100_gr *gr = gf100_gr(nvkm_gr(object->engine));
 union {
  struct fermi_a_zbc_depth_v0 v0;
 } *args = data;
 int ret = -ENOSYS;

 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 0))) {
  switch (args->v0.format) {
  case 128:
   ret = gf100_gr_zbc_depth_get(gr, args->v0.format,
          args->v0.ds,
          args->v0.l2);
   return (ret >= 0) ? 0 : -ENOSPC;
  default:
   return -EINVAL;
  }
 }

 return ret;
}
