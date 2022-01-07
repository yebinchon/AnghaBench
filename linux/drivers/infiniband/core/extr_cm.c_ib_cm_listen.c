
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_cm_id {int dummy; } ;
typedef int __be64 ;
struct TYPE_2__ {int lock; } ;


 int __ib_cm_listen (struct ib_cm_id*,int ,int ) ;
 TYPE_1__ cm ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ib_cm_listen(struct ib_cm_id *cm_id, __be64 service_id, __be64 service_mask)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&cm.lock, flags);
 ret = __ib_cm_listen(cm_id, service_id, service_mask);
 spin_unlock_irqrestore(&cm.lock, flags);

 return ret;
}
