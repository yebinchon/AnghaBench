
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_object {int engine; } ;
struct gf100_gr {int dummy; } ;
struct fermi_a_zbc_color_v0 {int format; int index; int l2; int ds; } ;


 int EINVAL ;
 int ENOSYS ;
 struct gf100_gr* gf100_gr (int ) ;
 int gf100_gr_zbc_color_get (struct gf100_gr*,int,int ,int ) ;
 int nvif_unpack (int,void**,int *,struct fermi_a_zbc_color_v0,int ,int ,int) ;
 int nvkm_gr (int ) ;

__attribute__((used)) static int
gf100_fermi_mthd_zbc_color(struct nvkm_object *object, void *data, u32 size)
{
 struct gf100_gr *gr = gf100_gr(nvkm_gr(object->engine));
 union {
  struct fermi_a_zbc_color_v0 v0;
 } *args = data;
 int ret = -ENOSYS;

 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 0))) {
  switch (args->v0.format) {
  case 128:
  case 129:
  case 133:
  case 135:
  case 132:
  case 131:
  case 130:
  case 134:
  case 142:
  case 141:
  case 146:
  case 138:
  case 144:
  case 143:
  case 140:
  case 139:
  case 137:
  case 145:
  case 136:
   ret = gf100_gr_zbc_color_get(gr, args->v0.format,
          args->v0.ds,
          args->v0.l2);
   if (ret >= 0) {
    args->v0.index = ret;
    return 0;
   }
   break;
  default:
   return -EINVAL;
  }
 }

 return ret;
}
