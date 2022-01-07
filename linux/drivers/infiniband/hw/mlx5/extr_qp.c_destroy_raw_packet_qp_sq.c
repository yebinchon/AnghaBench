
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int umem; } ;
struct TYPE_3__ {int mqp; } ;
struct mlx5_ib_sq {TYPE_2__ ubuffer; TYPE_1__ base; } ;
struct mlx5_ib_dev {int mdev; } ;


 int destroy_flow_rule_vport_sq (struct mlx5_ib_sq*) ;
 int ib_umem_release (int ) ;
 int mlx5_core_destroy_sq_tracked (int ,int *) ;

__attribute__((used)) static void destroy_raw_packet_qp_sq(struct mlx5_ib_dev *dev,
         struct mlx5_ib_sq *sq)
{
 destroy_flow_rule_vport_sq(sq);
 mlx5_core_destroy_sq_tracked(dev->mdev, &sq->base.mqp);
 ib_umem_release(sq->ubuffer.umem);
}
