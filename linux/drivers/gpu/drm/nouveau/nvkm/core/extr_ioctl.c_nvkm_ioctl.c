
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_client {int super; int * data; struct nvkm_object object; } ;
struct nvif_ioctl_v0 {int token; int route; int owner; int type; int object; int version; } ;


 int ENOSYS ;
 int nvif_ioctl (struct nvkm_object*,char*,int,...) ;
 int nvif_unpack (int,void**,int*,struct nvif_ioctl_v0,int ,int ,int) ;
 int nvkm_ioctl_path (struct nvkm_client*,int ,int ,void*,int,int ,int *,int *) ;

int
nvkm_ioctl(struct nvkm_client *client, bool supervisor,
    void *data, u32 size, void **hack)
{
 struct nvkm_object *object = &client->object;
 union {
  struct nvif_ioctl_v0 v0;
 } *args = data;
 int ret = -ENOSYS;

 client->super = supervisor;
 nvif_ioctl(object, "size %d\n", size);

 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 1))) {
  nvif_ioctl(object,
      "vers %d type %02x object %016llx owner %02x\n",
      args->v0.version, args->v0.type, args->v0.object,
      args->v0.owner);
  ret = nvkm_ioctl_path(client, args->v0.object, args->v0.type,
          data, size, args->v0.owner,
          &args->v0.route, &args->v0.token);
 }

 if (ret != 1) {
  nvif_ioctl(object, "return %d\n", ret);
  if (hack) {
   *hack = client->data;
   client->data = ((void*)0);
  }
 }

 return ret;
}
