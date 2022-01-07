
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct nvkm_object {struct nvkm_client* client; } ;
struct nvkm_event {int dummy; } ;
struct TYPE_3__ {int token; int route; int version; } ;
struct TYPE_4__ {TYPE_1__ v0; } ;
struct nvkm_client_notify {int size; struct nvkm_client* client; int n; TYPE_2__ rep; int version; } ;
struct nvkm_client {struct nvkm_client_notify** notify; } ;
struct nvif_notify_req_v0 {size_t reply; int token; int route; int version; } ;


 size_t ARRAY_SIZE (struct nvkm_client_notify**) ;
 int ENOMEM ;
 int ENOSPC ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int kfree (struct nvkm_client_notify*) ;
 struct nvkm_client_notify* kzalloc (int,int ) ;
 int nvif_ioctl (struct nvkm_object*,char*,int ,...) ;
 int nvif_unpack (int,void**,int *,struct nvif_notify_req_v0,int ,int ,int) ;
 int nvkm_client_notify ;
 int nvkm_notify_init (struct nvkm_object*,struct nvkm_event*,int ,int,void*,int ,size_t,int *) ;

int
nvkm_client_notify_new(struct nvkm_object *object,
         struct nvkm_event *event, void *data, u32 size)
{
 struct nvkm_client *client = object->client;
 struct nvkm_client_notify *notify;
 union {
  struct nvif_notify_req_v0 v0;
 } *req = data;
 u8 index, reply;
 int ret = -ENOSYS;

 for (index = 0; index < ARRAY_SIZE(client->notify); index++) {
  if (!client->notify[index])
   break;
 }

 if (index == ARRAY_SIZE(client->notify))
  return -ENOSPC;

 notify = kzalloc(sizeof(*notify), GFP_KERNEL);
 if (!notify)
  return -ENOMEM;

 nvif_ioctl(object, "notify new size %d\n", size);
 if (!(ret = nvif_unpack(ret, &data, &size, req->v0, 0, 0, 1))) {
  nvif_ioctl(object, "notify new vers %d reply %d route %02x "
       "token %llx\n", req->v0.version,
      req->v0.reply, req->v0.route, req->v0.token);
  notify->version = req->v0.version;
  notify->size = sizeof(notify->rep.v0);
  notify->rep.v0.version = req->v0.version;
  notify->rep.v0.route = req->v0.route;
  notify->rep.v0.token = req->v0.token;
  reply = req->v0.reply;
 }

 if (ret == 0) {
  ret = nvkm_notify_init(object, event, nvkm_client_notify,
           0, data, size, reply, &notify->n);
  if (ret == 0) {
   client->notify[index] = notify;
   notify->client = client;
   return index;
  }
 }

 kfree(notify);
 return ret;
}
