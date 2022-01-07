
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_client {int dummy; } ;
struct nvif_ioctl_ntfy_get_v0 {int index; int version; } ;


 int ENOSYS ;
 int nvif_ioctl (struct nvkm_object*,char*,int ,...) ;
 int nvif_unpack (int,void**,int *,struct nvif_ioctl_ntfy_get_v0,int ,int ,int) ;
 int nvkm_client_notify_get (struct nvkm_client*,int ) ;

__attribute__((used)) static int
nvkm_ioctl_ntfy_get(struct nvkm_client *client,
      struct nvkm_object *object, void *data, u32 size)
{
 union {
  struct nvif_ioctl_ntfy_get_v0 v0;
 } *args = data;
 int ret = -ENOSYS;

 nvif_ioctl(object, "ntfy get size %d\n", size);
 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 0))) {
  nvif_ioctl(object, "ntfy get vers %d index %d\n",
      args->v0.version, args->v0.index);
  ret = nvkm_client_notify_get(client, args->v0.index);
 }

 return ret;
}
