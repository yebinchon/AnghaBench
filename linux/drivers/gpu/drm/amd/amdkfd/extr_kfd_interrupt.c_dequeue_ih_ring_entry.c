
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_dev {TYPE_1__* device_info; int ih_fifo; } ;
struct TYPE_2__ {int ih_ring_entry_size; } ;


 int WARN_ON (int) ;
 int kfifo_out (int *,void*,int) ;

__attribute__((used)) static bool dequeue_ih_ring_entry(struct kfd_dev *kfd, void *ih_ring_entry)
{
 int count;

 count = kfifo_out(&kfd->ih_fifo, ih_ring_entry,
    kfd->device_info->ih_ring_entry_size);

 WARN_ON(count && count != kfd->device_info->ih_ring_entry_size);

 return count == kfd->device_info->ih_ring_entry_size;
}
