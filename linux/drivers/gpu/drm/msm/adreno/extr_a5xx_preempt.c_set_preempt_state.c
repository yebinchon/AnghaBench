
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a5xx_gpu {int preempt_state; } ;
typedef enum preempt_state { ____Placeholder_preempt_state } preempt_state ;


 int atomic_set (int *,int) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static inline void set_preempt_state(struct a5xx_gpu *gpu,
  enum preempt_state new)
{





 smp_mb__before_atomic();
 atomic_set(&gpu->preempt_state, new);

 smp_mb__after_atomic();
}
