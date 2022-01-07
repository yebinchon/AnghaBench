
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ocrdma_eq {size_t vector; } ;
struct TYPE_5__ {int* vector_list; } ;
struct TYPE_6__ {scalar_t__ intr_mode; TYPE_2__ msix; TYPE_1__* pdev; } ;
struct ocrdma_dev {TYPE_3__ nic_info; } ;
struct TYPE_4__ {int irq; } ;


 scalar_t__ BE_INTERRUPT_MODE_INTX ;

int ocrdma_get_irq(struct ocrdma_dev *dev, struct ocrdma_eq *eq)
{
 int irq;

 if (dev->nic_info.intr_mode == BE_INTERRUPT_MODE_INTX)
  irq = dev->nic_info.pdev->irq;
 else
  irq = dev->nic_info.msix.vector_list[eq->vector];
 return irq;
}
