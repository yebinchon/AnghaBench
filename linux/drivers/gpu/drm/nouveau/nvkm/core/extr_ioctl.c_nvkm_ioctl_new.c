
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ oclass; } ;
struct nvkm_oclass {int (* ctor ) (struct nvkm_oclass*,void*,int ,struct nvkm_object**) ;scalar_t__ engine; struct nvkm_object* parent; struct nvkm_client* client; int object; int token; int route; int handle; TYPE_1__ base; } ;
struct nvkm_object {int tree; int head; TYPE_2__* func; } ;
struct nvkm_client {struct nvkm_object* data; } ;
struct nvif_ioctl_new_v0 {scalar_t__ oclass; int object; int token; int route; int handle; int version; } ;
typedef int oclass ;
struct TYPE_4__ {int (* sclass ) (struct nvkm_object*,int ,struct nvkm_oclass*) ;} ;


 int EEXIST ;
 int EINVAL ;
 int ENOSYS ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int list_add (int *,int *) ;
 int memset (struct nvkm_oclass*,int,int) ;
 int nvif_ioctl (struct nvkm_object*,char*,...) ;
 int nvif_unpack (int,void**,int *,struct nvif_ioctl_new_v0,int ,int ,int) ;
 scalar_t__ nvkm_engine_ref (scalar_t__) ;
 int nvkm_engine_unref (scalar_t__*) ;
 int nvkm_object_del (struct nvkm_object**) ;
 int nvkm_object_fini (struct nvkm_object*,int) ;
 int nvkm_object_init (struct nvkm_object*) ;
 scalar_t__ nvkm_object_insert (struct nvkm_object*) ;
 int stub1 (struct nvkm_object*,int ,struct nvkm_oclass*) ;
 int stub2 (struct nvkm_oclass*,void*,int ,struct nvkm_object**) ;

__attribute__((used)) static int
nvkm_ioctl_new(struct nvkm_client *client,
        struct nvkm_object *parent, void *data, u32 size)
{
 union {
  struct nvif_ioctl_new_v0 v0;
 } *args = data;
 struct nvkm_object *object = ((void*)0);
 struct nvkm_oclass oclass;
 int ret = -ENOSYS, i = 0;

 nvif_ioctl(parent, "new size %d\n", size);
 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 1))) {
  nvif_ioctl(parent, "new vers %d handle %08x class %08x "
       "route %02x token %llx object %016llx\n",
      args->v0.version, args->v0.handle, args->v0.oclass,
      args->v0.route, args->v0.token, args->v0.object);
 } else
  return ret;

 if (!parent->func->sclass) {
  nvif_ioctl(parent, "cannot have children\n");
  return -EINVAL;
 }

 do {
  memset(&oclass, 0x00, sizeof(oclass));
  oclass.handle = args->v0.handle;
  oclass.route = args->v0.route;
  oclass.token = args->v0.token;
  oclass.object = args->v0.object;
  oclass.client = client;
  oclass.parent = parent;
  ret = parent->func->sclass(parent, i++, &oclass);
  if (ret)
   return ret;
 } while (oclass.base.oclass != args->v0.oclass);

 if (oclass.engine) {
  oclass.engine = nvkm_engine_ref(oclass.engine);
  if (IS_ERR(oclass.engine))
   return PTR_ERR(oclass.engine);
 }

 ret = oclass.ctor(&oclass, data, size, &object);
 nvkm_engine_unref(&oclass.engine);
 if (ret == 0) {
  ret = nvkm_object_init(object);
  if (ret == 0) {
   list_add(&object->head, &parent->tree);
   if (nvkm_object_insert(object)) {
    client->data = object;
    return 0;
   }
   ret = -EEXIST;
  }
  nvkm_object_fini(object, 0);
 }

 nvkm_object_del(&object);
 return ret;
}
