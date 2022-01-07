
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_cdma {int running; int torndown; int push_buffer; int event; int sync_queue; int complete; int lock; } ;


 int CDMA_EVENT_NONE ;
 int INIT_LIST_HEAD (int *) ;
 int host1x_pushbuffer_init (int *) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;

int host1x_cdma_init(struct host1x_cdma *cdma)
{
 int err;

 mutex_init(&cdma->lock);
 init_completion(&cdma->complete);

 INIT_LIST_HEAD(&cdma->sync_queue);

 cdma->event = CDMA_EVENT_NONE;
 cdma->running = 0;
 cdma->torndown = 0;

 err = host1x_pushbuffer_init(&cdma->push_buffer);
 if (err)
  return err;

 return 0;
}
