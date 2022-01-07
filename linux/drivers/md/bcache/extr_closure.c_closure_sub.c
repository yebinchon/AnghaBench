
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct closure {int remaining; } ;


 int atomic_sub_return (int,int *) ;
 int closure_put_after_sub (struct closure*,int ) ;

void closure_sub(struct closure *cl, int v)
{
 closure_put_after_sub(cl, atomic_sub_return(v, &cl->remaining));
}
