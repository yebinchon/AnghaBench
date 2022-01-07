
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct push_buffer {int dummy; } ;
struct host1x_cdma {int event; int lock; int complete; int sync_queue; struct push_buffer push_buffer; } ;
typedef enum cdma_event { ____Placeholder_cdma_event } cdma_event ;
struct TYPE_2__ {int dev; } ;


 int CDMA_EVENT_NONE ;


 unsigned int EINVAL ;
 int WARN_ON (int) ;
 TYPE_1__* cdma_to_channel (struct host1x_cdma*) ;
 int dev_name (int ) ;
 unsigned int host1x_pushbuffer_space (struct push_buffer*) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule () ;
 int trace_host1x_wait_cdma (int ,int) ;
 int wait_for_completion (int *) ;

unsigned int host1x_cdma_wait_locked(struct host1x_cdma *cdma,
         enum cdma_event event)
{
 for (;;) {
  struct push_buffer *pb = &cdma->push_buffer;
  unsigned int space;

  switch (event) {
  case 128:
   space = list_empty(&cdma->sync_queue) ? 1 : 0;
   break;

  case 129:
   space = host1x_pushbuffer_space(pb);
   break;

  default:
   WARN_ON(1);
   return -EINVAL;
  }

  if (space)
   return space;

  trace_host1x_wait_cdma(dev_name(cdma_to_channel(cdma)->dev),
           event);


  if (cdma->event != CDMA_EVENT_NONE) {
   mutex_unlock(&cdma->lock);
   schedule();
   mutex_lock(&cdma->lock);
   continue;
  }

  cdma->event = event;

  mutex_unlock(&cdma->lock);
  wait_for_completion(&cdma->complete);
  mutex_lock(&cdma->lock);
 }

 return 0;
}
