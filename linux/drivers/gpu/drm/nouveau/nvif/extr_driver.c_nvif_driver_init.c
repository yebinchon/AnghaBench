
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int priv; } ;
struct nvif_client {TYPE_1__ object; TYPE_2__* driver; } ;
struct TYPE_4__ {int (* init ) (char const*,int ,char const*,char const*,int *) ;int (* fini ) (int ) ;int name; } ;


 int EINVAL ;
 int nvif_client_init (struct nvif_client*,char const*,int ,struct nvif_client*) ;
 TYPE_2__** nvif_driver ;
 int strcmp (int ,char const*) ;
 int stub1 (char const*,int ,char const*,char const*,int *) ;
 int stub2 (int ) ;

int
nvif_driver_init(const char *drv, const char *cfg, const char *dbg,
   const char *name, u64 device, struct nvif_client *client)
{
 int ret = -EINVAL, i;

 for (i = 0; (client->driver = nvif_driver[i]); i++) {
  if (!drv || !strcmp(client->driver->name, drv)) {
   ret = client->driver->init(name, device, cfg, dbg,
         &client->object.priv);
   if (ret == 0)
    break;
   client->driver->fini(client->object.priv);
  }
 }

 if (ret == 0)
  ret = nvif_client_init(client, name, device, client);
 return ret;
}
