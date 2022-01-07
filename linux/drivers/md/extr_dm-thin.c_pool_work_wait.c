
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool_work {int complete; int worker; } ;
struct pool {int wq; } ;


 int INIT_WORK_ONSTACK (int *,void (*) (struct work_struct*)) ;
 int init_completion (int *) ;
 int queue_work (int ,int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void pool_work_wait(struct pool_work *pw, struct pool *pool,
      void (*fn)(struct work_struct *))
{
 INIT_WORK_ONSTACK(&pw->worker, fn);
 init_completion(&pw->complete);
 queue_work(pool->wq, &pw->worker);
 wait_for_completion(&pw->complete);
}
