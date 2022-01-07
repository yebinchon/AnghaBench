
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {int state; } ;


 int TASKLET_STATE_SCHED ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool __tasklet_is_scheduled(struct tasklet_struct *t)
{
 return test_bit(TASKLET_STATE_SCHED, &t->state);
}
