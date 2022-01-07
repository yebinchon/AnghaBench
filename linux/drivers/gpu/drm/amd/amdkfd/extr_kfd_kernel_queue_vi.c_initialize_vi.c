
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_dev {int dummy; } ;
struct kernel_queue {int eop_kernel_addr; TYPE_1__* eop_mem; int eop_gpu_addr; } ;
typedef enum kfd_queue_type { ____Placeholder_kfd_queue_type } kfd_queue_type ;
struct TYPE_2__ {int cpu_ptr; int gpu_addr; } ;


 int PAGE_SIZE ;
 int kfd_gtt_sa_allocate (struct kfd_dev*,int ,TYPE_1__**) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static bool initialize_vi(struct kernel_queue *kq, struct kfd_dev *dev,
   enum kfd_queue_type type, unsigned int queue_size)
{
 int retval;

 retval = kfd_gtt_sa_allocate(dev, PAGE_SIZE, &kq->eop_mem);
 if (retval != 0)
  return 0;

 kq->eop_gpu_addr = kq->eop_mem->gpu_addr;
 kq->eop_kernel_addr = kq->eop_mem->cpu_ptr;

 memset(kq->eop_kernel_addr, 0, PAGE_SIZE);

 return 1;
}
