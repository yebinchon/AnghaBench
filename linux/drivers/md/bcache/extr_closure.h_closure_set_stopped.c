
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct closure {int remaining; } ;


 int CLOSURE_RUNNING ;
 int atomic_sub (int ,int *) ;

__attribute__((used)) static inline void closure_set_stopped(struct closure *cl)
{
 atomic_sub(CLOSURE_RUNNING, &cl->remaining);
}
