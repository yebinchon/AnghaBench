
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_dev {TYPE_1__* device_info; int ih_fifo; } ;
struct TYPE_2__ {int ih_ring_entry_size; } ;


 int dev_err_ratelimited (int ,char*,int) ;
 int kfd_chardev () ;
 int kfifo_in (int *,void const*,int) ;

bool enqueue_ih_ring_entry(struct kfd_dev *kfd, const void *ih_ring_entry)
{
 int count;

 count = kfifo_in(&kfd->ih_fifo, ih_ring_entry,
    kfd->device_info->ih_ring_entry_size);
 if (count != kfd->device_info->ih_ring_entry_size) {
  dev_err_ratelimited(kfd_chardev(),
   "Interrupt ring overflow, dropping interrupt %d\n",
   count);
  return 0;
 }

 return 1;
}
