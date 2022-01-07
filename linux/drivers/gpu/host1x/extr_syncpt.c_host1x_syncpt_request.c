
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_syncpt {int dummy; } ;
struct host1x_client {TYPE_1__* parent; } ;
struct host1x {int dummy; } ;
struct TYPE_2__ {int parent; } ;


 struct host1x* dev_get_drvdata (int ) ;
 struct host1x_syncpt* host1x_syncpt_alloc (struct host1x*,struct host1x_client*,unsigned long) ;

struct host1x_syncpt *host1x_syncpt_request(struct host1x_client *client,
         unsigned long flags)
{
 struct host1x *host = dev_get_drvdata(client->parent->parent);

 return host1x_syncpt_alloc(host, client, flags);
}
