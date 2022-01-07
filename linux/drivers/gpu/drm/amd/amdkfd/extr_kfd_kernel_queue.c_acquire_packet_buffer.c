
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
struct kernel_queue {size_t* rptr_kernel; size_t pending_wptr; unsigned int nop_packet; scalar_t__ pending_wptr64; TYPE_2__* queue; scalar_t__ pq_kernel_addr; } ;
struct TYPE_3__ {int queue_size; } ;
struct TYPE_4__ {TYPE_1__ properties; } ;


 int ENOMEM ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int acquire_packet_buffer(struct kernel_queue *kq,
  size_t packet_size_in_dwords, unsigned int **buffer_ptr)
{
 size_t available_size;
 size_t queue_size_dwords;
 uint32_t wptr, rptr;
 uint64_t wptr64;
 unsigned int *queue_address;






 rptr = *kq->rptr_kernel;
 wptr = kq->pending_wptr;
 wptr64 = kq->pending_wptr64;
 queue_address = (unsigned int *)kq->pq_kernel_addr;
 queue_size_dwords = kq->queue->properties.queue_size / 4;

 pr_debug("rptr: %d\n", rptr);
 pr_debug("wptr: %d\n", wptr);
 pr_debug("queue_address 0x%p\n", queue_address);

 available_size = (rptr + queue_size_dwords - 1 - wptr) %
       queue_size_dwords;

 if (packet_size_in_dwords > available_size) {




  goto err_no_space;
 }

 if (wptr + packet_size_in_dwords >= queue_size_dwords) {



  if (packet_size_in_dwords >= rptr)
   goto err_no_space;


  while (wptr > 0) {
   queue_address[wptr] = kq->nop_packet;
   wptr = (wptr + 1) % queue_size_dwords;
   wptr64++;
  }
 }

 *buffer_ptr = &queue_address[wptr];
 kq->pending_wptr = wptr + packet_size_in_dwords;
 kq->pending_wptr64 = wptr64 + packet_size_in_dwords;

 return 0;

err_no_space:
 *buffer_ptr = ((void*)0);
 return -ENOMEM;
}
