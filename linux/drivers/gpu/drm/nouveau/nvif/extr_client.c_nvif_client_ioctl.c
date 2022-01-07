
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int priv; } ;
struct nvif_client {int super; TYPE_2__ object; TYPE_1__* driver; } ;
struct TYPE_3__ {int (* ioctl ) (int ,int ,void*,int ,int *) ;} ;


 int stub1 (int ,int ,void*,int ,int *) ;

int
nvif_client_ioctl(struct nvif_client *client, void *data, u32 size)
{
 return client->driver->ioctl(client->object.priv, client->super, data, size, ((void*)0));
}
