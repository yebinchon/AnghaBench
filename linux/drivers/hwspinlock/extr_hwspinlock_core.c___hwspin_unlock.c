
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hwspinlock {int lock; TYPE_2__* bank; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* unlock ) (struct hwspinlock*) ;} ;


 int BUG_ON (int) ;




 int mb () ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct hwspinlock*) ;

void __hwspin_unlock(struct hwspinlock *hwlock, int mode, unsigned long *flags)
{
 BUG_ON(!hwlock);
 BUG_ON(!flags && mode == 129);
 mb();

 hwlock->bank->ops->unlock(hwlock);


 switch (mode) {
 case 129:
  spin_unlock_irqrestore(&hwlock->lock, *flags);
  break;
 case 130:
  spin_unlock_irq(&hwlock->lock);
  break;
 case 128:
 case 131:

  break;
 default:
  spin_unlock(&hwlock->lock);
  break;
 }
}
