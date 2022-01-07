
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf_size; int bitmap; int idx_buf; int mtt; } ;
struct hns_roce_srq {int buf; int mtt; TYPE_1__ idx_que; int wrid; } ;
struct hns_roce_dev {int dummy; } ;


 int hns_roce_buf_free (struct hns_roce_dev*,int,int *) ;
 int hns_roce_mtt_cleanup (struct hns_roce_dev*,int *) ;
 int kfree (int ) ;
 int kvfree (int ) ;

__attribute__((used)) static void destroy_kernel_srq(struct hns_roce_dev *hr_dev,
          struct hns_roce_srq *srq, int srq_buf_size)
{
 kvfree(srq->wrid);
 hns_roce_mtt_cleanup(hr_dev, &srq->idx_que.mtt);
 hns_roce_buf_free(hr_dev, srq->idx_que.buf_size, &srq->idx_que.idx_buf);
 kfree(srq->idx_que.bitmap);
 hns_roce_mtt_cleanup(hr_dev, &srq->mtt);
 hns_roce_buf_free(hr_dev, srq_buf_size, &srq->buf);
}
