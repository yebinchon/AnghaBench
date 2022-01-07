
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_execlists {int tasklet; } ;


 int local_bh_disable () ;
 int tasklet_lock (int *) ;

__attribute__((used)) static inline void
execlists_active_lock_bh(struct intel_engine_execlists *execlists)
{
 local_bh_disable();
 tasklet_lock(&execlists->tasklet);
}
