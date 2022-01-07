
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct closure {int remaining; } ;


 int CLOSURE_REMAINING_MASK ;
 int __closure_sync (struct closure*) ;
 int atomic_read (int *) ;

__attribute__((used)) static inline void closure_sync(struct closure *cl)
{
 if ((atomic_read(&cl->remaining) & CLOSURE_REMAINING_MASK) != 1)
  __closure_sync(cl);
}
