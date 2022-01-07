
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_object {int dummy; } ;
struct nvkm_client {int notify; } ;


 int ARRAY_SIZE (int ) ;
 int nvif_debug (struct nvkm_object*,char*,char const*) ;
 struct nvkm_client* nvkm_client (struct nvkm_object*) ;
 int nvkm_client_notify_put (struct nvkm_client*,int) ;

__attribute__((used)) static int
nvkm_client_fini(struct nvkm_object *object, bool suspend)
{
 struct nvkm_client *client = nvkm_client(object);
 const char *name[2] = { "fini", "suspend" };
 int i;
 nvif_debug(object, "%s notify\n", name[suspend]);
 for (i = 0; i < ARRAY_SIZE(client->notify); i++)
  nvkm_client_notify_put(client, i);
 return 0;
}
