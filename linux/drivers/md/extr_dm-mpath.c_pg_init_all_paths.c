
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int lock; } ;


 int __pg_init_all_paths (struct multipath*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pg_init_all_paths(struct multipath *m)
{
 int ret;
 unsigned long flags;

 spin_lock_irqsave(&m->lock, flags);
 ret = __pg_init_all_paths(m);
 spin_unlock_irqrestore(&m->lock, flags);

 return ret;
}
