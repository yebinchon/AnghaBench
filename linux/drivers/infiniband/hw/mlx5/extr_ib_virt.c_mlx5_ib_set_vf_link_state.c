
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_vf_context {scalar_t__ policy; } ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_hca_vport_context {scalar_t__ policy; int field_select; } ;
struct TYPE_3__ {struct mlx5_vf_context* vfs_ctx; } ;
struct TYPE_4__ {TYPE_1__ sriov; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_HCA_VPORT_SEL_STATE_POLICY ;
 scalar_t__ MLX5_POLICY_INVALID ;
 int kfree (struct mlx5_hca_vport_context*) ;
 struct mlx5_hca_vport_context* kzalloc (int,int ) ;
 int mlx5_core_modify_hca_vport_context (struct mlx5_core_dev*,int,int,int,struct mlx5_hca_vport_context*) ;
 scalar_t__ net_to_mlx_policy (int) ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

int mlx5_ib_set_vf_link_state(struct ib_device *device, int vf,
         u8 port, int state)
{
 struct mlx5_ib_dev *dev = to_mdev(device);
 struct mlx5_core_dev *mdev = dev->mdev;
 struct mlx5_hca_vport_context *in;
 struct mlx5_vf_context *vfs_ctx = mdev->priv.sriov.vfs_ctx;
 int err;

 in = kzalloc(sizeof(*in), GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 in->policy = net_to_mlx_policy(state);
 if (in->policy == MLX5_POLICY_INVALID) {
  err = -EINVAL;
  goto out;
 }
 in->field_select = MLX5_HCA_VPORT_SEL_STATE_POLICY;
 err = mlx5_core_modify_hca_vport_context(mdev, 1, 1, vf + 1, in);
 if (!err)
  vfs_ctx[vf].policy = in->policy;

out:
 kfree(in);
 return err;
}
