
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct closure {int remaining; } ;


 int CLOSURE_REMAINING_INITIALIZER ;
 int atomic_set (int *,int ) ;
 int memset (struct closure*,int ,int) ;

__attribute__((used)) static inline void closure_init_stack(struct closure *cl)
{
 memset(cl, 0, sizeof(struct closure));
 atomic_set(&cl->remaining, CLOSURE_REMAINING_INITIALIZER);
}
