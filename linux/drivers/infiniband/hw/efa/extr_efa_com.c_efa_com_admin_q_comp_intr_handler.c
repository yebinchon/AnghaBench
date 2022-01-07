
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct TYPE_4__ {TYPE_1__ cq; } ;
struct efa_com_dev {TYPE_2__ aq; } ;


 int efa_com_handle_admin_completion (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void efa_com_admin_q_comp_intr_handler(struct efa_com_dev *edev)
{
 unsigned long flags;

 spin_lock_irqsave(&edev->aq.cq.lock, flags);
 efa_com_handle_admin_completion(&edev->aq);
 spin_unlock_irqrestore(&edev->aq.cq.lock, flags);
}
