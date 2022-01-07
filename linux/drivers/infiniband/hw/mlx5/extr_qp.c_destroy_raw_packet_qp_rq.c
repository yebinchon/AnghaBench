
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mqp; } ;
struct mlx5_ib_rq {TYPE_1__ base; } ;
struct mlx5_ib_dev {int mdev; } ;


 int mlx5_core_destroy_rq_tracked (int ,int *) ;

__attribute__((used)) static void destroy_raw_packet_qp_rq(struct mlx5_ib_dev *dev,
         struct mlx5_ib_rq *rq)
{
 mlx5_core_destroy_rq_tracked(dev->mdev, &rq->base.mqp);
}
