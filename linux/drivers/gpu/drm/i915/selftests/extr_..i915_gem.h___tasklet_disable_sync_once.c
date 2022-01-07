
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {int count; } ;


 int atomic_fetch_inc (int *) ;
 int tasklet_unlock_wait (struct tasklet_struct*) ;

__attribute__((used)) static inline void __tasklet_disable_sync_once(struct tasklet_struct *t)
{
 if (!atomic_fetch_inc(&t->count))
  tasklet_unlock_wait(t);
}
