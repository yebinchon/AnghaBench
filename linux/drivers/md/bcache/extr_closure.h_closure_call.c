
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct closure {int dummy; } ;
typedef int closure_fn ;


 int closure_init (struct closure*,struct closure*) ;
 int continue_at_nobarrier (struct closure*,int ,struct workqueue_struct*) ;

__attribute__((used)) static inline void closure_call(struct closure *cl, closure_fn fn,
    struct workqueue_struct *wq,
    struct closure *parent)
{
 closure_init(cl, parent);
 continue_at_nobarrier(cl, fn, wq);
}
