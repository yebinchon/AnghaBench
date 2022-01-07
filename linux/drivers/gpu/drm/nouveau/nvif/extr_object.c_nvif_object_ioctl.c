
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvif_object {int priv; struct nvif_client* client; } ;
struct nvif_ioctl_v0 {scalar_t__ version; int owner; scalar_t__ object; } ;
struct nvif_client {int super; struct nvif_object object; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* ioctl ) (int ,int ,void*,int,void**) ;} ;


 int ENOSYS ;
 int NVIF_IOCTL_V0_OWNER_ANY ;
 scalar_t__ nvif_handle (struct nvif_object*) ;
 int stub1 (int ,int ,void*,int,void**) ;

int
nvif_object_ioctl(struct nvif_object *object, void *data, u32 size, void **hack)
{
 struct nvif_client *client = object->client;
 union {
  struct nvif_ioctl_v0 v0;
 } *args = data;

 if (size >= sizeof(*args) && args->v0.version == 0) {
  if (object != &client->object)
   args->v0.object = nvif_handle(object);
  else
   args->v0.object = 0;
  args->v0.owner = NVIF_IOCTL_V0_OWNER_ANY;
 } else
  return -ENOSYS;

 return client->driver->ioctl(client->object.priv, client->super,
         data, size, hack);
}
