
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct kfd_dev {int dummy; } ;
struct TYPE_2__ {int (* acquire_packet_buffer ) (struct kernel_queue*,int,int**) ;int (* submit_packet ) (struct kernel_queue*) ;} ;
struct kernel_queue {int nop_packet; TYPE_1__ ops; } ;


 int KFD_QUEUE_TYPE_HIQ ;
 struct kernel_queue* kernel_queue_init (struct kfd_dev*,int ) ;
 int pr_err (char*) ;
 int stub1 (struct kernel_queue*,int,int**) ;
 int stub2 (struct kernel_queue*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static __attribute__((unused)) void test_kq(struct kfd_dev *dev)
{
 struct kernel_queue *kq;
 uint32_t *buffer, i;
 int retval;

 pr_err("Starting kernel queue test\n");

 kq = kernel_queue_init(dev, KFD_QUEUE_TYPE_HIQ);
 if (unlikely(!kq)) {
  pr_err("  Failed to initialize HIQ\n");
  pr_err("Kernel queue test failed\n");
  return;
 }

 retval = kq->ops.acquire_packet_buffer(kq, 5, &buffer);
 if (unlikely(retval != 0)) {
  pr_err("  Failed to acquire packet buffer\n");
  pr_err("Kernel queue test failed\n");
  return;
 }
 for (i = 0; i < 5; i++)
  buffer[i] = kq->nop_packet;
 kq->ops.submit_packet(kq);

 pr_err("Ending kernel queue test\n");
}
