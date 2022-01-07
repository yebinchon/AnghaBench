
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bitmap; } ;
struct hns_roce_srq {int lock; int tail; TYPE_1__ idx_que; } ;


 int bitmap_clear (int ,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void hns_roce_free_srq_wqe(struct hns_roce_srq *srq, int wqe_index)
{

 spin_lock(&srq->lock);

 bitmap_clear(srq->idx_que.bitmap, wqe_index, 1);
 srq->tail++;

 spin_unlock(&srq->lock);
}
