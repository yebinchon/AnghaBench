
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int priv; } ;
struct nvif_client {TYPE_1__* driver; TYPE_2__ object; } ;
struct TYPE_3__ {int (* fini ) (int ) ;} ;


 int nvif_object_fini (TYPE_2__*) ;
 int stub1 (int ) ;

void
nvif_client_fini(struct nvif_client *client)
{
 nvif_object_fini(&client->object);
 if (client->driver) {
  if (client->driver->fini)
   client->driver->fini(client->object.priv);
  client->driver = ((void*)0);
 }
}
