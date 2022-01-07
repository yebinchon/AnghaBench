
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max; } ;
struct mlx5_ib_srq {int mutex; TYPE_1__ msrq; } ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_srq_attr {scalar_t__ srq_limit; } ;
struct ib_srq {int device; } ;
typedef enum ib_srq_attr_mask { ____Placeholder_ib_srq_attr_mask } ib_srq_attr_mask ;


 int EINVAL ;
 int IB_SRQ_LIMIT ;
 int IB_SRQ_MAX_WR ;
 int mlx5_cmd_arm_srq (struct mlx5_ib_dev*,TYPE_1__*,scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_srq* to_msrq (struct ib_srq*) ;

int mlx5_ib_modify_srq(struct ib_srq *ibsrq, struct ib_srq_attr *attr,
         enum ib_srq_attr_mask attr_mask, struct ib_udata *udata)
{
 struct mlx5_ib_dev *dev = to_mdev(ibsrq->device);
 struct mlx5_ib_srq *srq = to_msrq(ibsrq);
 int ret;


 if (attr_mask & IB_SRQ_MAX_WR)
  return -EINVAL;

 if (attr_mask & IB_SRQ_LIMIT) {
  if (attr->srq_limit >= srq->msrq.max)
   return -EINVAL;

  mutex_lock(&srq->mutex);
  ret = mlx5_cmd_arm_srq(dev, &srq->msrq, attr->srq_limit, 1);
  mutex_unlock(&srq->mutex);

  if (ret)
   return ret;
 }

 return 0;
}
