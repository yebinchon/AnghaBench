
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client_resource {int handle; } ;
struct client {int lock; int resource_idr; scalar_t__ in_shutdown; } ;
typedef int gfp_t ;


 int ECANCELED ;
 int GFP_NOWAIT ;
 int client_get (struct client*) ;
 int gfpflags_allow_blocking (int ) ;
 int idr_alloc (int *,struct client_resource*,int ,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int schedule_if_iso_resource (struct client_resource*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int add_client_resource(struct client *client,
          struct client_resource *resource, gfp_t gfp_mask)
{
 bool preload = gfpflags_allow_blocking(gfp_mask);
 unsigned long flags;
 int ret;

 if (preload)
  idr_preload(gfp_mask);
 spin_lock_irqsave(&client->lock, flags);

 if (client->in_shutdown)
  ret = -ECANCELED;
 else
  ret = idr_alloc(&client->resource_idr, resource, 0, 0,
    GFP_NOWAIT);
 if (ret >= 0) {
  resource->handle = ret;
  client_get(client);
  schedule_if_iso_resource(resource);
 }

 spin_unlock_irqrestore(&client->lock, flags);
 if (preload)
  idr_preload_end();

 return ret < 0 ? ret : 0;
}
