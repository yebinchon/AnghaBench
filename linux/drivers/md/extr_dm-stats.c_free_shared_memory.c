
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMCRIT (char*) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 size_t shared_memory_amount ;
 int shared_memory_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_shared_memory(size_t alloc_size)
{
 unsigned long flags;

 spin_lock_irqsave(&shared_memory_lock, flags);

 if (WARN_ON_ONCE(shared_memory_amount < alloc_size)) {
  spin_unlock_irqrestore(&shared_memory_lock, flags);
  DMCRIT("Memory usage accounting bug.");
  return;
 }

 shared_memory_amount -= alloc_size;

 spin_unlock_irqrestore(&shared_memory_lock, flags);
}
