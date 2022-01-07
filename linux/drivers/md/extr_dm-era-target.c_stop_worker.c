
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era {int wq; int suspended; } ;


 int atomic_set (int *,int) ;
 int flush_workqueue (int ) ;

__attribute__((used)) static void stop_worker(struct era *era)
{
 atomic_set(&era->suspended, 1);
 flush_workqueue(era->wq);
}
