
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int maxver; int minver; int oclass; } ;
struct nvkm_oclass {TYPE_3__ base; struct nvkm_client* client; } ;
struct nvkm_object {TYPE_1__* func; } ;
struct nvkm_client {int dummy; } ;
struct nvif_ioctl_sclass_v0 {int count; TYPE_2__* oclass; int version; } ;
struct TYPE_5__ {int maxver; int minver; int oclass; } ;
struct TYPE_4__ {scalar_t__ (* sclass ) (struct nvkm_object*,int,struct nvkm_oclass*) ;} ;


 int EINVAL ;
 int ENOSYS ;
 int nvif_ioctl (struct nvkm_object*,char*,int,...) ;
 int nvif_unpack (int,void**,int*,struct nvif_ioctl_sclass_v0,int ,int ,int) ;
 scalar_t__ stub1 (struct nvkm_object*,int,struct nvkm_oclass*) ;

__attribute__((used)) static int
nvkm_ioctl_sclass(struct nvkm_client *client,
    struct nvkm_object *object, void *data, u32 size)
{
 union {
  struct nvif_ioctl_sclass_v0 v0;
 } *args = data;
 struct nvkm_oclass oclass = { .client = client };
 int ret = -ENOSYS, i = 0;

 nvif_ioctl(object, "sclass size %d\n", size);
 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 1))) {
  nvif_ioctl(object, "sclass vers %d count %d\n",
      args->v0.version, args->v0.count);
  if (size != args->v0.count * sizeof(args->v0.oclass[0]))
   return -EINVAL;

  while (object->func->sclass &&
         object->func->sclass(object, i, &oclass) >= 0) {
   if (i < args->v0.count) {
    args->v0.oclass[i].oclass = oclass.base.oclass;
    args->v0.oclass[i].minver = oclass.base.minver;
    args->v0.oclass[i].maxver = oclass.base.maxver;
   }
   i++;
  }

  args->v0.count = i;
 }

 return ret;
}
