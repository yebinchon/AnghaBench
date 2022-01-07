
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
typedef int spinlock_t ;


 int list_add (struct list_head*,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void list_add_locked(struct list_head *new, struct list_head *head,
       spinlock_t *lock)
{
 unsigned long flags;

 spin_lock_irqsave(lock, flags);

 list_add(new, head);

 spin_unlock_irqrestore(lock, flags);
}
