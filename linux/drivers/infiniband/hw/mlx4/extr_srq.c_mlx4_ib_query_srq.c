
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_gs; scalar_t__ max; } ;
struct mlx4_ib_srq {TYPE_1__ msrq; } ;
struct mlx4_ib_dev {int dev; } ;
struct ib_srq_attr {int srq_limit; int max_sge; scalar_t__ max_wr; } ;
struct ib_srq {int device; } ;


 int mlx4_srq_query (int ,TYPE_1__*,int*) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 struct mlx4_ib_srq* to_msrq (struct ib_srq*) ;

int mlx4_ib_query_srq(struct ib_srq *ibsrq, struct ib_srq_attr *srq_attr)
{
 struct mlx4_ib_dev *dev = to_mdev(ibsrq->device);
 struct mlx4_ib_srq *srq = to_msrq(ibsrq);
 int ret;
 int limit_watermark;

 ret = mlx4_srq_query(dev->dev, &srq->msrq, &limit_watermark);
 if (ret)
  return ret;

 srq_attr->srq_limit = limit_watermark;
 srq_attr->max_wr = srq->msrq.max - 1;
 srq_attr->max_sge = srq->msrq.max_gs;

 return 0;
}
