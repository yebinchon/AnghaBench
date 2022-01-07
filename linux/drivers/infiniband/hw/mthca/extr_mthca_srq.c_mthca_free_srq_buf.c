
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_srq {int max; int wqe_shift; int wrid; int mr; int is_direct; int queue; } ;
struct mthca_dev {int dummy; } ;


 int kfree (int ) ;
 int mthca_buf_free (struct mthca_dev*,int,int *,int ,int *) ;

__attribute__((used)) static void mthca_free_srq_buf(struct mthca_dev *dev, struct mthca_srq *srq)
{
 mthca_buf_free(dev, srq->max << srq->wqe_shift, &srq->queue,
         srq->is_direct, &srq->mr);
 kfree(srq->wrid);
}
