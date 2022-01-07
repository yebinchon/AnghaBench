
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_client {TYPE_1__** notify; } ;
struct TYPE_2__ {int n; } ;


 int ARRAY_SIZE (TYPE_1__**) ;
 int ENOENT ;
 int nvkm_notify_get (int *) ;

int
nvkm_client_notify_get(struct nvkm_client *client, int index)
{
 if (index < ARRAY_SIZE(client->notify)) {
  if (client->notify[index]) {
   nvkm_notify_get(&client->notify[index]->n);
   return 0;
  }
 }
 return -ENOENT;
}
