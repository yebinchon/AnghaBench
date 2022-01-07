
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct envelope {int comp; int comp_irq; int comp_lock; } ;


 int enable_irq (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int envelope_detector_comp_latch(struct envelope *env)
{
 int comp;

 spin_lock_irq(&env->comp_lock);
 comp = env->comp;
 env->comp = 0;
 spin_unlock_irq(&env->comp_lock);

 if (!comp)
  return 0;
 enable_irq(env->comp_irq);


 synchronize_irq(env->comp_irq);


 spin_lock_irq(&env->comp_lock);
 comp = env->comp;
 env->comp = 0;
 spin_unlock_irq(&env->comp_lock);

 if (comp)
  enable_irq(env->comp_irq);

 return 1;
}
