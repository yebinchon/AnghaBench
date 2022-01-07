
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int send_flags; int opcode; } ;
struct mlx5_umr_wr {int access_flags; TYPE_2__ wr; struct ib_pd* pd; int mkey; } ;
struct TYPE_3__ {int key; } ;
struct mlx5_ib_mr {TYPE_1__ mmkey; } ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_pd {int device; } ;


 int IB_MR_REREG_ACCESS ;
 int IB_MR_REREG_PD ;
 int MLX5_IB_SEND_UMR_FAIL_IF_FREE ;
 int MLX5_IB_SEND_UMR_UPDATE_PD_ACCESS ;
 int MLX5_IB_WR_UMR ;
 int mlx5_ib_post_send_wait (struct mlx5_ib_dev*,struct mlx5_umr_wr*) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

__attribute__((used)) static int rereg_umr(struct ib_pd *pd, struct mlx5_ib_mr *mr,
       int access_flags, int flags)
{
 struct mlx5_ib_dev *dev = to_mdev(pd->device);
 struct mlx5_umr_wr umrwr = {};
 int err;

 umrwr.wr.send_flags = MLX5_IB_SEND_UMR_FAIL_IF_FREE;

 umrwr.wr.opcode = MLX5_IB_WR_UMR;
 umrwr.mkey = mr->mmkey.key;

 if (flags & IB_MR_REREG_PD || flags & IB_MR_REREG_ACCESS) {
  umrwr.pd = pd;
  umrwr.access_flags = access_flags;
  umrwr.wr.send_flags |= MLX5_IB_SEND_UMR_UPDATE_PD_ACCESS;
 }

 err = mlx5_ib_post_send_wait(dev, &umrwr);

 return err;
}
