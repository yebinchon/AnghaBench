
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct closure {int remaining; } ;


 int BUG_ON (int) ;
 int CLOSURE_REMAINING_MASK ;
 int atomic_inc (int *) ;
 int atomic_inc_return (int *) ;

__attribute__((used)) static inline void closure_get(struct closure *cl)
{




 atomic_inc(&cl->remaining);

}
