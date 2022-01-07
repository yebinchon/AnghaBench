
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_execlists {int tasklet; } ;


 int local_bh_enable () ;
 int tasklet_unlock (int *) ;

__attribute__((used)) static inline void
execlists_active_unlock_bh(struct intel_engine_execlists *execlists)
{
 tasklet_unlock(&execlists->tasklet);
 local_bh_enable();
}
