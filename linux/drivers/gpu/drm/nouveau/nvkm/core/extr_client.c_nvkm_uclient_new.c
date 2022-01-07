
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_oclass {TYPE_1__* client; int object; int token; int route; int handle; } ;
struct nvkm_object {int object; int token; int route; int handle; TYPE_1__* client; } ;
struct nvkm_client {struct nvkm_object object; int debug; } ;
struct nvif_client_v0 {int device; scalar_t__* name; } ;
struct TYPE_2__ {int debug; int ntfy; } ;


 int ENOSYS ;
 int nvif_unpack (int,void**,int *,struct nvif_client_v0,int ,int ,int) ;
 int nvkm_client_new (scalar_t__*,int ,int *,int *,int ,struct nvkm_client**) ;

__attribute__((used)) static int
nvkm_uclient_new(const struct nvkm_oclass *oclass, void *argv, u32 argc,
   struct nvkm_object **pobject)
{
 union {
  struct nvif_client_v0 v0;
 } *args = argv;
 struct nvkm_client *client;
 int ret = -ENOSYS;

 if (!(ret = nvif_unpack(ret, &argv, &argc, args->v0, 0, 0, 0))){
  args->v0.name[sizeof(args->v0.name) - 1] = 0;
  ret = nvkm_client_new(args->v0.name, args->v0.device, ((void*)0),
          ((void*)0), oclass->client->ntfy, &client);
  if (ret)
   return ret;
 } else
  return ret;

 client->object.client = oclass->client;
 client->object.handle = oclass->handle;
 client->object.route = oclass->route;
 client->object.token = oclass->token;
 client->object.object = oclass->object;
 client->debug = oclass->client->debug;
 *pobject = &client->object;
 return 0;
}
