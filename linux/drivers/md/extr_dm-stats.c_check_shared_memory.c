
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __check_shared_memory (size_t) ;
 int shared_memory_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static bool check_shared_memory(size_t alloc_size)
{
 bool ret;

 spin_lock_irq(&shared_memory_lock);

 ret = __check_shared_memory(alloc_size);

 spin_unlock_irq(&shared_memory_lock);

 return ret;
}
