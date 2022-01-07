
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era {int worker; int wq; int suspended; } ;


 int atomic_read (int *) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void wake_worker(struct era *era)
{
 if (!atomic_read(&era->suspended))
  queue_work(era->wq, &era->worker);
}
