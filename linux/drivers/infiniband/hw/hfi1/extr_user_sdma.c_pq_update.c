
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_user_sdma_pkt_q {int wait; int n_reqs; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void pq_update(struct hfi1_user_sdma_pkt_q *pq)
{
 if (atomic_dec_and_test(&pq->n_reqs))
  wake_up(&pq->wait);
}
