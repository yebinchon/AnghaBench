
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct push_buffer {int dummy; } ;
struct host1x_cdma {scalar_t__ event; int lock; int complete; struct push_buffer push_buffer; } ;
struct host1x {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ CDMA_EVENT_NONE ;
 scalar_t__ CDMA_EVENT_PUSH_BUFFER_SPACE ;
 TYPE_1__* cdma_to_channel (struct host1x_cdma*) ;
 int dev_name (int ) ;
 int host1x_hw_cdma_flush (struct host1x*,struct host1x_cdma*) ;
 unsigned int host1x_pushbuffer_space (struct push_buffer*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule () ;
 int trace_host1x_wait_cdma (int ,scalar_t__) ;
 int wait_for_completion (int *) ;

int host1x_cdma_wait_pushbuffer_space(struct host1x *host1x,
          struct host1x_cdma *cdma,
          unsigned int needed)
{
 while (1) {
  struct push_buffer *pb = &cdma->push_buffer;
  unsigned int space;

  space = host1x_pushbuffer_space(pb);
  if (space >= needed)
   break;

  trace_host1x_wait_cdma(dev_name(cdma_to_channel(cdma)->dev),
           CDMA_EVENT_PUSH_BUFFER_SPACE);

  host1x_hw_cdma_flush(host1x, cdma);


  if (cdma->event != CDMA_EVENT_NONE) {
   mutex_unlock(&cdma->lock);
   schedule();
   mutex_lock(&cdma->lock);
   continue;
  }

  cdma->event = CDMA_EVENT_PUSH_BUFFER_SPACE;

  mutex_unlock(&cdma->lock);
  wait_for_completion(&cdma->complete);
  mutex_lock(&cdma->lock);
 }

 return 0;
}
