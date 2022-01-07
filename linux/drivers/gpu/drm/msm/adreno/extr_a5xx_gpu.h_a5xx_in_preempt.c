
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a5xx_gpu {int preempt_state; } ;


 int PREEMPT_ABORT ;
 int PREEMPT_NONE ;
 int atomic_read (int *) ;

__attribute__((used)) static inline bool a5xx_in_preempt(struct a5xx_gpu *a5xx_gpu)
{
 int preempt_state = atomic_read(&a5xx_gpu->preempt_state);

 return !(preempt_state == PREEMPT_NONE ||
   preempt_state == PREEMPT_ABORT);
}
