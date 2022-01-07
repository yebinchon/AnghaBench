
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {int dummy; } ;


 int hi3660_mbox_acquire_channel (struct mbox_chan*) ;
 int hi3660_mbox_unlock (struct mbox_chan*) ;

__attribute__((used)) static int hi3660_mbox_startup(struct mbox_chan *chan)
{
 int ret;

 ret = hi3660_mbox_unlock(chan);
 if (ret)
  return ret;

 ret = hi3660_mbox_acquire_channel(chan);
 if (ret)
  return ret;

 return 0;
}
