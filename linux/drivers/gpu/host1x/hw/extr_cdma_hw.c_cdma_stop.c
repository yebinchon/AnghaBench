
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_channel {int dummy; } ;
struct host1x_cdma {int running; int lock; } ;


 int CDMA_EVENT_SYNC_QUEUE_EMPTY ;
 int HOST1X_CHANNEL_DMACTRL ;
 int HOST1X_CHANNEL_DMACTRL_DMASTOP ;
 struct host1x_channel* cdma_to_channel (struct host1x_cdma*) ;
 int host1x_cdma_wait_locked (struct host1x_cdma*,int ) ;
 int host1x_ch_writel (struct host1x_channel*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cdma_stop(struct host1x_cdma *cdma)
{
 struct host1x_channel *ch = cdma_to_channel(cdma);

 mutex_lock(&cdma->lock);

 if (cdma->running) {
  host1x_cdma_wait_locked(cdma, CDMA_EVENT_SYNC_QUEUE_EMPTY);
  host1x_ch_writel(ch, HOST1X_CHANNEL_DMACTRL_DMASTOP,
     HOST1X_CHANNEL_DMACTRL);
  cdma->running = 0;
 }

 mutex_unlock(&cdma->lock);
}
