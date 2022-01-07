
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx4_ib_dev {int dev; } ;
struct ib_device {int dummy; } ;


 int MLX4_PROT_ETH ;
 struct net_device* bond_option_active_slave_get_rcu (int ) ;
 int dev_hold (struct net_device*) ;
 struct net_device* mlx4_get_protocol_dev (int ,int ,int ) ;
 scalar_t__ mlx4_is_bonded (int ) ;
 struct net_device* netdev_master_upper_dev_get_rcu (struct net_device*) ;
 int netdev_priv (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct mlx4_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static struct net_device *mlx4_ib_get_netdev(struct ib_device *device, u8 port_num)
{
 struct mlx4_ib_dev *ibdev = to_mdev(device);
 struct net_device *dev;

 rcu_read_lock();
 dev = mlx4_get_protocol_dev(ibdev->dev, MLX4_PROT_ETH, port_num);

 if (dev) {
  if (mlx4_is_bonded(ibdev->dev)) {
   struct net_device *upper = ((void*)0);

   upper = netdev_master_upper_dev_get_rcu(dev);
   if (upper) {
    struct net_device *active;

    active = bond_option_active_slave_get_rcu(netdev_priv(upper));
    if (active)
     dev = active;
   }
  }
 }
 if (dev)
  dev_hold(dev);

 rcu_read_unlock();
 return dev;
}
