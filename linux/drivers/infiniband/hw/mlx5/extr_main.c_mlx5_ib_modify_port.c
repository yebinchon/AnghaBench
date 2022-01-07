
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_ib_dev {int cap_mask_mutex; int mdev; } ;
struct ib_port_modify {int clr_port_cap_mask; int set_port_cap_mask; } ;
struct ib_port_attr {int port_cap_flags; } ;
struct ib_device {int dummy; } ;


 scalar_t__ IB_LINK_LAYER_INFINIBAND ;
 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 int ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;
 int ib_virt ;
 scalar_t__ mlx5_ib_port_link_layer (struct ib_device*,int ) ;
 int mlx5_set_port_caps (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_port_caps_atomic (struct mlx5_ib_dev*,int ,int,int) ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mlx5_ib_modify_port(struct ib_device *ibdev, u8 port, int mask,
          struct ib_port_modify *props)
{
 struct mlx5_ib_dev *dev = to_mdev(ibdev);
 struct ib_port_attr attr;
 u32 tmp;
 int err;
 u32 change_mask;
 u32 value;
 bool is_ib = (mlx5_ib_port_link_layer(ibdev, port) ==
        IB_LINK_LAYER_INFINIBAND);




 if (!is_ib)
  return 0;

 if (MLX5_CAP_GEN(dev->mdev, ib_virt) && is_ib) {
  change_mask = props->clr_port_cap_mask | props->set_port_cap_mask;
  value = ~props->clr_port_cap_mask | props->set_port_cap_mask;
  return set_port_caps_atomic(dev, port, change_mask, value);
 }

 mutex_lock(&dev->cap_mask_mutex);

 err = ib_query_port(ibdev, port, &attr);
 if (err)
  goto out;

 tmp = (attr.port_cap_flags | props->set_port_cap_mask) &
  ~props->clr_port_cap_mask;

 err = mlx5_set_port_caps(dev->mdev, port, tmp);

out:
 mutex_unlock(&dev->cap_mask_mutex);
 return err;
}
