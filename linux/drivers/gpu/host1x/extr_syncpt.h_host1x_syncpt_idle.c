
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_syncpt {int max_val; int min_val; } ;


 int atomic_read (int *) ;
 int smp_rmb () ;

__attribute__((used)) static inline bool host1x_syncpt_idle(struct host1x_syncpt *sp)
{
 int min, max;
 smp_rmb();
 min = atomic_read(&sp->min_val);
 max = atomic_read(&sp->max_val);
 return (min == max);
}
