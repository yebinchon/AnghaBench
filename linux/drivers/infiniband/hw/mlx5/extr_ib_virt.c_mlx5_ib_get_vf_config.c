
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_hca_vport_context {int policy; } ;
struct mlx5_core_dev {int dummy; } ;
struct ifla_vf_info {int linkstate; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __IFLA_VF_LINK_STATE_MAX ;
 int kfree (struct mlx5_hca_vport_context*) ;
 struct mlx5_hca_vport_context* kzalloc (int,int ) ;
 int memset (struct ifla_vf_info*,int ,int) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int,int) ;
 int mlx5_query_hca_vport_context (struct mlx5_core_dev*,int,int,int,struct mlx5_hca_vport_context*) ;
 int mlx_to_net_policy (int ) ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

int mlx5_ib_get_vf_config(struct ib_device *device, int vf, u8 port,
     struct ifla_vf_info *info)
{
 struct mlx5_ib_dev *dev = to_mdev(device);
 struct mlx5_core_dev *mdev = dev->mdev;
 struct mlx5_hca_vport_context *rep;
 int err;

 rep = kzalloc(sizeof(*rep), GFP_KERNEL);
 if (!rep)
  return -ENOMEM;

 err = mlx5_query_hca_vport_context(mdev, 1, 1, vf + 1, rep);
 if (err) {
  mlx5_ib_warn(dev, "failed to query port policy for vf %d (%d)\n",
        vf, err);
  goto free;
 }
 memset(info, 0, sizeof(*info));
 info->linkstate = mlx_to_net_policy(rep->policy);
 if (info->linkstate == __IFLA_VF_LINK_STATE_MAX)
  err = -EINVAL;

free:
 kfree(rep);
 return err;
}
