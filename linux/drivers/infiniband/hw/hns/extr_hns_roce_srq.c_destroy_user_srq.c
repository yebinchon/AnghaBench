
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int umem; int mtt; } ;
struct hns_roce_srq {int umem; int mtt; TYPE_1__ idx_que; } ;
struct hns_roce_dev {int dummy; } ;


 int hns_roce_mtt_cleanup (struct hns_roce_dev*,int *) ;
 int ib_umem_release (int ) ;

__attribute__((used)) static void destroy_user_srq(struct hns_roce_dev *hr_dev,
        struct hns_roce_srq *srq)
{
 hns_roce_mtt_cleanup(hr_dev, &srq->idx_que.mtt);
 ib_umem_release(srq->idx_que.umem);
 hns_roce_mtt_cleanup(hr_dev, &srq->mtt);
 ib_umem_release(srq->umem);
}
