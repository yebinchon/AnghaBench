
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RCU ;
 int __acquire (int ) ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline void ttm_base_object_noref_release(void)
{
 __acquire(RCU);
 rcu_read_unlock();
}
