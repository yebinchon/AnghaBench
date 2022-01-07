
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_client {TYPE_1__** notify; } ;
struct TYPE_3__ {int n; } ;


 int ARRAY_SIZE (TYPE_1__**) ;
 int ENOENT ;
 int kfree (TYPE_1__*) ;
 int nvkm_notify_fini (int *) ;

int
nvkm_client_notify_del(struct nvkm_client *client, int index)
{
 if (index < ARRAY_SIZE(client->notify)) {
  if (client->notify[index]) {
   nvkm_notify_fini(&client->notify[index]->n);
   kfree(client->notify[index]);
   client->notify[index] = ((void*)0);
   return 0;
  }
 }
 return -ENOENT;
}
