
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_dev {int interrupts_active; int interrupt_work; int interrupt_lock; int ih_wq; TYPE_1__* device_info; int ih_fifo; } ;
struct TYPE_2__ {int ih_ring_entry_size; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int KFD_IH_NUM_ENTRIES ;
 int WQ_HIGHPRI ;
 int alloc_workqueue (char*,int ,int) ;
 int dev_err (int ,char*) ;
 int interrupt_wq ;
 int kfd_chardev () ;
 int kfifo_alloc (int *,int,int ) ;
 int smp_wmb () ;
 int spin_lock_init (int *) ;

int kfd_interrupt_init(struct kfd_dev *kfd)
{
 int r;

 r = kfifo_alloc(&kfd->ih_fifo,
  KFD_IH_NUM_ENTRIES * kfd->device_info->ih_ring_entry_size,
  GFP_KERNEL);
 if (r) {
  dev_err(kfd_chardev(), "Failed to allocate IH fifo\n");
  return r;
 }

 kfd->ih_wq = alloc_workqueue("KFD IH", WQ_HIGHPRI, 1);
 spin_lock_init(&kfd->interrupt_lock);

 INIT_WORK(&kfd->interrupt_work, interrupt_wq);

 kfd->interrupts_active = 1;






 smp_wmb();

 return 0;
}
