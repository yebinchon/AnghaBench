
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_user_sdma_queue {int lock; } ;
struct qib_pportdata {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qib_user_sdma_hwqueue_clean (struct qib_pportdata*) ;
 int qib_user_sdma_queue_clean (struct qib_pportdata*,struct qib_user_sdma_queue*) ;

int qib_user_sdma_make_progress(struct qib_pportdata *ppd,
    struct qib_user_sdma_queue *pq)
{
 int ret = 0;

 mutex_lock(&pq->lock);
 qib_user_sdma_hwqueue_clean(ppd);
 ret = qib_user_sdma_queue_clean(ppd, pq);
 mutex_unlock(&pq->lock);

 return ret;
}
