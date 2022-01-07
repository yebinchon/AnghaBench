
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct closure {struct workqueue_struct* wq; int * fn; } ;
typedef int closure_fn ;


 int closure_set_ip (struct closure*) ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static inline void set_closure_fn(struct closure *cl, closure_fn *fn,
      struct workqueue_struct *wq)
{
 closure_set_ip(cl);
 cl->fn = fn;
 cl->wq = wq;

 smp_mb__before_atomic();
}
