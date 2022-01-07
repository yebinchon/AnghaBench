
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_cmdq {int pending_count; } ;


 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int smp_mb__after_atomic () ;

__attribute__((used)) static inline bool cmdq_full(struct nitrox_cmdq *cmdq, int qlen)
{
 if (atomic_inc_return(&cmdq->pending_count) > qlen) {
  atomic_dec(&cmdq->pending_count);

  smp_mb__after_atomic();
  return 1;
 }

 smp_mb__after_atomic();
 return 0;
}
