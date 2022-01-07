
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgpath {int dummy; } ;
struct multipath {scalar_t__ pg_init_retries; int lock; int flags; int pg_init_count; } ;


 int MPATHF_PG_INIT_DISABLED ;
 int MPATHF_PG_INIT_REQUIRED ;
 scalar_t__ atomic_read (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool pg_init_limit_reached(struct multipath *m, struct pgpath *pgpath)
{
 unsigned long flags;
 bool limit_reached = 0;

 spin_lock_irqsave(&m->lock, flags);

 if (atomic_read(&m->pg_init_count) <= m->pg_init_retries &&
     !test_bit(MPATHF_PG_INIT_DISABLED, &m->flags))
  set_bit(MPATHF_PG_INIT_REQUIRED, &m->flags);
 else
  limit_reached = 1;

 spin_unlock_irqrestore(&m->lock, flags);

 return limit_reached;
}
