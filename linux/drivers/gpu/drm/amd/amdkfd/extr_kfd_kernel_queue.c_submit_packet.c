
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* submit_packet ) (struct kernel_queue*) ;} ;
struct kernel_queue {int* wptr_kernel; int pending_wptr; TYPE_1__ ops_asic_specific; int * pq_kernel_addr; } ;


 int pr_debug (char*,...) ;
 int stub1 (struct kernel_queue*) ;

__attribute__((used)) static void submit_packet(struct kernel_queue *kq)
{
 kq->ops_asic_specific.submit_packet(kq);
}
