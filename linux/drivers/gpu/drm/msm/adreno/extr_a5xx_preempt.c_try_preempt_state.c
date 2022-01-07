
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a5xx_gpu {int preempt_state; } ;
typedef enum preempt_state { ____Placeholder_preempt_state } preempt_state ;


 int atomic_cmpxchg (int *,int,int) ;

__attribute__((used)) static inline bool try_preempt_state(struct a5xx_gpu *a5xx_gpu,
  enum preempt_state old, enum preempt_state new)
{
 enum preempt_state cur = atomic_cmpxchg(&a5xx_gpu->preempt_state,
  old, new);

 return (cur == old);
}
