
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_fence {int dummy; } ;
struct nouveau_cli {int base; } ;
struct TYPE_3__ {scalar_t__ client; } ;
struct nouveau_channel {int chid; TYPE_1__ user; int killed; scalar_t__ fence; } ;
struct TYPE_4__ {int name; } ;


 int NV_PRINTK (int ,struct nouveau_cli*,char*,int ,int ) ;
 int atomic_read (int *) ;
 int err ;
 scalar_t__ likely (int) ;
 int nouveau_fence_new (struct nouveau_channel*,int,struct nouveau_fence**) ;
 int nouveau_fence_unref (struct nouveau_fence**) ;
 int nouveau_fence_wait (struct nouveau_fence*,int,int) ;
 TYPE_2__* nvxx_client (int *) ;

int
nouveau_channel_idle(struct nouveau_channel *chan)
{
 if (likely(chan && chan->fence && !atomic_read(&chan->killed))) {
  struct nouveau_cli *cli = (void *)chan->user.client;
  struct nouveau_fence *fence = ((void*)0);
  int ret;

  ret = nouveau_fence_new(chan, 0, &fence);
  if (!ret) {
   ret = nouveau_fence_wait(fence, 0, 0);
   nouveau_fence_unref(&fence);
  }

  if (ret) {
   NV_PRINTK(err, cli, "failed to idle channel %d [%s]\n",
      chan->chid, nvxx_client(&cli->base)->name);
   return ret;
  }
 }
 return 0;
}
