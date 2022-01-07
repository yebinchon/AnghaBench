
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_6__ {int * notifier_call; } ;
struct mlx5_ib_multiport_info {TYPE_3__ mdev_events; int mdev; struct mlx5_ib_dev* ibdev; } ;
struct mlx5_ib_dev {int mdev; TYPE_2__* port; } ;
struct TYPE_4__ {int mpi_lock; struct mlx5_ib_multiport_info* mpi; } ;
struct TYPE_5__ {TYPE_1__ mp; } ;


 int get_port_caps (struct mlx5_ib_dev*,size_t) ;
 int lockdep_assert_held (int *) ;
 int mlx5_add_netdev_notifier (struct mlx5_ib_dev*,size_t) ;
 size_t mlx5_core_native_port_num (int ) ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,size_t) ;
 int mlx5_ib_err (struct mlx5_ib_dev*,char*,size_t) ;
 int * mlx5_ib_event_slave_port ;
 int mlx5_ib_init_cong_debugfs (struct mlx5_ib_dev*,size_t) ;
 int mlx5_ib_multiport_mutex ;
 int mlx5_ib_unbind_slave_port (struct mlx5_ib_dev*,struct mlx5_ib_multiport_info*) ;
 int mlx5_nic_vport_affiliate_multiport (int ,int ) ;
 int mlx5_notifier_register (int ,TYPE_3__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool mlx5_ib_bind_slave_port(struct mlx5_ib_dev *ibdev,
        struct mlx5_ib_multiport_info *mpi)
{
 u8 port_num = mlx5_core_native_port_num(mpi->mdev) - 1;
 int err;

 lockdep_assert_held(&mlx5_ib_multiport_mutex);

 spin_lock(&ibdev->port[port_num].mp.mpi_lock);
 if (ibdev->port[port_num].mp.mpi) {
  mlx5_ib_dbg(ibdev, "port %d already affiliated.\n",
       port_num + 1);
  spin_unlock(&ibdev->port[port_num].mp.mpi_lock);
  return 0;
 }

 ibdev->port[port_num].mp.mpi = mpi;
 mpi->ibdev = ibdev;
 mpi->mdev_events.notifier_call = ((void*)0);
 spin_unlock(&ibdev->port[port_num].mp.mpi_lock);

 err = mlx5_nic_vport_affiliate_multiport(ibdev->mdev, mpi->mdev);
 if (err)
  goto unbind;

 err = get_port_caps(ibdev, mlx5_core_native_port_num(mpi->mdev));
 if (err)
  goto unbind;

 err = mlx5_add_netdev_notifier(ibdev, port_num);
 if (err) {
  mlx5_ib_err(ibdev, "failed adding netdev notifier for port %u\n",
       port_num + 1);
  goto unbind;
 }

 mpi->mdev_events.notifier_call = mlx5_ib_event_slave_port;
 mlx5_notifier_register(mpi->mdev, &mpi->mdev_events);

 mlx5_ib_init_cong_debugfs(ibdev, port_num);

 return 1;

unbind:
 mlx5_ib_unbind_slave_port(ibdev, mpi);
 return 0;
}
