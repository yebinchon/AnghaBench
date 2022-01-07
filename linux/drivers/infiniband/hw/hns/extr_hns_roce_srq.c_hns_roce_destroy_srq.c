
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_udata {int dummy; } ;
struct ib_srq {int device; } ;
struct TYPE_2__ {int umem; int mtt; } ;
struct hns_roce_srq {int max; int wqe_shift; int umem; TYPE_1__ idx_que; int buf; int wrid; int mtt; } ;
struct hns_roce_dev {int dummy; } ;


 int hns_roce_buf_free (struct hns_roce_dev*,int,int *) ;
 int hns_roce_mtt_cleanup (struct hns_roce_dev*,int *) ;
 int hns_roce_srq_free (struct hns_roce_dev*,struct hns_roce_srq*) ;
 int ib_umem_release (int ) ;
 int kvfree (int ) ;
 struct hns_roce_dev* to_hr_dev (int ) ;
 struct hns_roce_srq* to_hr_srq (struct ib_srq*) ;

void hns_roce_destroy_srq(struct ib_srq *ibsrq, struct ib_udata *udata)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(ibsrq->device);
 struct hns_roce_srq *srq = to_hr_srq(ibsrq);

 hns_roce_srq_free(hr_dev, srq);
 hns_roce_mtt_cleanup(hr_dev, &srq->mtt);

 if (udata) {
  hns_roce_mtt_cleanup(hr_dev, &srq->idx_que.mtt);
 } else {
  kvfree(srq->wrid);
  hns_roce_buf_free(hr_dev, srq->max << srq->wqe_shift,
      &srq->buf);
 }
 ib_umem_release(srq->idx_que.umem);
 ib_umem_release(srq->umem);
}
