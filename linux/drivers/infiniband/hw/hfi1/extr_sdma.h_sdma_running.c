
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_engine {int tail_lock; } ;


 int __sdma_running (struct sdma_engine*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int sdma_running(struct sdma_engine *engine)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&engine->tail_lock, flags);
 ret = __sdma_running(engine);
 spin_unlock_irqrestore(&engine->tail_lock, flags);
 return ret;
}
