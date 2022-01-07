
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hwspinlock {int lock; TYPE_2__* bank; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* trylock ) (struct hwspinlock*) ;} ;


 int BUG_ON (int) ;
 int EBUSY ;




 int mb () ;
 int spin_trylock (int *) ;
 int spin_trylock_irq (int *) ;
 int spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct hwspinlock*) ;

int __hwspin_trylock(struct hwspinlock *hwlock, int mode, unsigned long *flags)
{
 int ret;

 BUG_ON(!hwlock);
 BUG_ON(!flags && mode == 129);
 switch (mode) {
 case 129:
  ret = spin_trylock_irqsave(&hwlock->lock, *flags);
  break;
 case 130:
  ret = spin_trylock_irq(&hwlock->lock);
  break;
 case 128:
 case 131:
  ret = 1;
  break;
 default:
  ret = spin_trylock(&hwlock->lock);
  break;
 }


 if (!ret)
  return -EBUSY;


 ret = hwlock->bank->ops->trylock(hwlock);


 if (!ret) {
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

  return -EBUSY;
 }
 mb();

 return 0;
}
