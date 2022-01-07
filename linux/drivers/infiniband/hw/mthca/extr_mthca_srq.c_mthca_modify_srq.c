
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mthca_srq {scalar_t__ max; int mutex; int srqn; } ;
struct mthca_dev {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_srq_attr {scalar_t__ srq_limit; } ;
struct ib_srq {int device; } ;
typedef enum ib_srq_attr_mask { ____Placeholder_ib_srq_attr_mask } ib_srq_attr_mask ;


 int EINVAL ;
 int IB_SRQ_LIMIT ;
 int IB_SRQ_MAX_WR ;
 int mthca_ARM_SRQ (struct mthca_dev*,int ,scalar_t__) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mthca_dev* to_mdev (int ) ;
 struct mthca_srq* to_msrq (struct ib_srq*) ;

int mthca_modify_srq(struct ib_srq *ibsrq, struct ib_srq_attr *attr,
       enum ib_srq_attr_mask attr_mask, struct ib_udata *udata)
{
 struct mthca_dev *dev = to_mdev(ibsrq->device);
 struct mthca_srq *srq = to_msrq(ibsrq);
 int ret = 0;


 if (attr_mask & IB_SRQ_MAX_WR)
  return -EINVAL;

 if (attr_mask & IB_SRQ_LIMIT) {
  u32 max_wr = mthca_is_memfree(dev) ? srq->max - 1 : srq->max;
  if (attr->srq_limit > max_wr)
   return -EINVAL;

  mutex_lock(&srq->mutex);
  ret = mthca_ARM_SRQ(dev, srq->srqn, attr->srq_limit);
  mutex_unlock(&srq->mutex);
 }

 return ret;
}
