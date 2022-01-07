
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct continuation {int ws; } ;


 int queue_work (struct workqueue_struct*,int *) ;

__attribute__((used)) static inline void queue_continuation(struct workqueue_struct *wq,
          struct continuation *k)
{
 queue_work(wq, &k->ws);
}
