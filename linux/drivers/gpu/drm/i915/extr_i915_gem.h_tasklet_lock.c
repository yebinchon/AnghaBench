
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {int dummy; } ;


 int cpu_relax () ;
 int tasklet_trylock (struct tasklet_struct*) ;

__attribute__((used)) static inline void tasklet_lock(struct tasklet_struct *t)
{
 while (!tasklet_trylock(t))
  cpu_relax();
}
