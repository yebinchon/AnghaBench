
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* uninitialize ) (struct kernel_queue*) ;} ;
struct kernel_queue {TYPE_1__ ops; } ;


 int kfree (struct kernel_queue*) ;
 int stub1 (struct kernel_queue*) ;

void kernel_queue_uninit(struct kernel_queue *kq)
{
 kq->ops.uninitialize(kq);
 kfree(kq);
}
