
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int worker; int wq; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static inline void wake_worker(struct clone *clone)
{
 queue_work(clone->wq, &clone->worker);
}
