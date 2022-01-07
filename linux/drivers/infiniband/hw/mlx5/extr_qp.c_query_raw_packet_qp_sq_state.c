
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int qpn; } ;
struct TYPE_4__ {TYPE_1__ mqp; } ;
struct mlx5_ib_sq {int state; TYPE_2__ base; } ;
struct mlx5_ib_dev {int mdev; } ;


 int mlx5_core_query_sq_state (int ,int ,int *) ;

__attribute__((used)) static int query_raw_packet_qp_sq_state(struct mlx5_ib_dev *dev,
     struct mlx5_ib_sq *sq,
     u8 *sq_state)
{
 int err;

 err = mlx5_core_query_sq_state(dev->mdev, sq->base.mqp.qpn, sq_state);
 if (err)
  goto out;
 sq->state = *sq_state;

out:
 return err;
}
