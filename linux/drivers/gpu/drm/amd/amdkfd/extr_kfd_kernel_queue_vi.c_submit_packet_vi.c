
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kernel_queue {int pending_wptr; TYPE_2__* queue; int * wptr_kernel; } ;
struct TYPE_3__ {int doorbell_ptr; } ;
struct TYPE_4__ {TYPE_1__ properties; } ;


 int write_kernel_doorbell (int ,int ) ;

__attribute__((used)) static void submit_packet_vi(struct kernel_queue *kq)
{
 *kq->wptr_kernel = kq->pending_wptr;
 write_kernel_doorbell(kq->queue->properties.doorbell_ptr,
    kq->pending_wptr);
}
