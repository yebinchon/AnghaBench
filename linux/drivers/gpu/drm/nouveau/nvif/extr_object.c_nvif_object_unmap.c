
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * ptr; scalar_t__ size; } ;
struct nvif_object {TYPE_2__ map; struct nvif_client* client; } ;
struct nvif_client {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* unmap ) (struct nvif_client*,int *,scalar_t__) ;} ;


 int nvif_object_unmap_handle (struct nvif_object*) ;
 int stub1 (struct nvif_client*,int *,scalar_t__) ;

void
nvif_object_unmap(struct nvif_object *object)
{
 struct nvif_client *client = object->client;
 if (object->map.ptr) {
  if (object->map.size) {
   client->driver->unmap(client, object->map.ptr,
            object->map.size);
   object->map.size = 0;
  }
  object->map.ptr = ((void*)0);
  nvif_object_unmap_handle(object);
 }
}
