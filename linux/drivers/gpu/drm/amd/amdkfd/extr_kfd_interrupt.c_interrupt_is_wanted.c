
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct kfd_dev {TYPE_2__* device_info; } ;
struct TYPE_4__ {TYPE_1__* event_interrupt_class; } ;
struct TYPE_3__ {unsigned int (* interrupt_isr ) (struct kfd_dev*,int const*,int *,int*) ;} ;


 unsigned int stub1 (struct kfd_dev*,int const*,int *,int*) ;

bool interrupt_is_wanted(struct kfd_dev *dev,
   const uint32_t *ih_ring_entry,
   uint32_t *patched_ihre, bool *flag)
{

 unsigned int wanted = 0;

 wanted |= dev->device_info->event_interrupt_class->interrupt_isr(dev,
      ih_ring_entry, patched_ihre, flag);

 return wanted != 0;
}
