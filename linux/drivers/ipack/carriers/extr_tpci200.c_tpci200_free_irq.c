
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpci200_board {int mutex; TYPE_1__* slots; } ;
struct slot_irq {int dummy; } ;
struct ipack_device {size_t slot; } ;
struct TYPE_2__ {struct slot_irq* irq; } ;


 int EINVAL ;
 int ERESTARTSYS ;
 int RCU_INIT_POINTER (struct slot_irq*,int *) ;
 struct tpci200_board* check_slot (struct ipack_device*) ;
 int kfree (struct slot_irq*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_rcu () ;
 int tpci200_disable_irq (struct tpci200_board*,size_t) ;

__attribute__((used)) static int tpci200_free_irq(struct ipack_device *dev)
{
 struct slot_irq *slot_irq;
 struct tpci200_board *tpci200;

 tpci200 = check_slot(dev);
 if (tpci200 == ((void*)0))
  return -EINVAL;

 if (mutex_lock_interruptible(&tpci200->mutex))
  return -ERESTARTSYS;

 if (tpci200->slots[dev->slot].irq == ((void*)0)) {
  mutex_unlock(&tpci200->mutex);
  return -EINVAL;
 }

 tpci200_disable_irq(tpci200, dev->slot);
 slot_irq = tpci200->slots[dev->slot].irq;

 RCU_INIT_POINTER(tpci200->slots[dev->slot].irq, ((void*)0));
 synchronize_rcu();
 kfree(slot_irq);
 mutex_unlock(&tpci200->mutex);
 return 0;
}
