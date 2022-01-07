
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int ringbuffer_pagecount; int * ringbuffer_page; int inbound; int outbound; } ;


 int PAGE_SHIFT ;
 int __free_pages (int *,int ) ;
 int get_order (int) ;
 int hv_ringbuffer_cleanup (int *) ;

void vmbus_free_ring(struct vmbus_channel *channel)
{
 hv_ringbuffer_cleanup(&channel->outbound);
 hv_ringbuffer_cleanup(&channel->inbound);

 if (channel->ringbuffer_page) {
  __free_pages(channel->ringbuffer_page,
        get_order(channel->ringbuffer_pagecount
           << PAGE_SHIFT));
  channel->ringbuffer_page = ((void*)0);
 }
}
