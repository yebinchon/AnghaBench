
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_5__ {int last_port_state; } ;
struct TYPE_4__ {int mpi_lock; int * mpi; } ;
struct mlx5_ib_port {TYPE_2__ roce; TYPE_1__ mp; } ;
struct TYPE_6__ {int * notifier_call; } ;
struct mlx5_ib_multiport_info {int mdev_refcnt; int unaffiliate; int mdev; int list; int unref_comp; TYPE_3__ mdev_events; int * ibdev; } ;
struct mlx5_ib_dev {struct mlx5_ib_port* port; } ;


 int IB_PORT_DOWN ;
 int init_completion (int *) ;
 int list_add_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;
 size_t mlx5_core_native_port_num (int ) ;
 int mlx5_ib_cleanup_cong_debugfs (struct mlx5_ib_dev*,size_t) ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,size_t) ;
 int mlx5_ib_err (struct mlx5_ib_dev*,char*,size_t) ;
 int mlx5_ib_multiport_mutex ;
 int mlx5_ib_unaffiliated_port_list ;
 int mlx5_nic_vport_unaffiliate_multiport (int ) ;
 int mlx5_notifier_unregister (int ,TYPE_3__*) ;
 int mlx5_remove_netdev_notifier (struct mlx5_ib_dev*,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void mlx5_ib_unbind_slave_port(struct mlx5_ib_dev *ibdev,
          struct mlx5_ib_multiport_info *mpi)
{
 u8 port_num = mlx5_core_native_port_num(mpi->mdev) - 1;
 struct mlx5_ib_port *port = &ibdev->port[port_num];
 int comps;
 int err;
 int i;

 lockdep_assert_held(&mlx5_ib_multiport_mutex);

 mlx5_ib_cleanup_cong_debugfs(ibdev, port_num);

 spin_lock(&port->mp.mpi_lock);
 if (!mpi->ibdev) {
  spin_unlock(&port->mp.mpi_lock);
  return;
 }

 mpi->ibdev = ((void*)0);

 spin_unlock(&port->mp.mpi_lock);
 if (mpi->mdev_events.notifier_call)
  mlx5_notifier_unregister(mpi->mdev, &mpi->mdev_events);
 mpi->mdev_events.notifier_call = ((void*)0);
 mlx5_remove_netdev_notifier(ibdev, port_num);
 spin_lock(&port->mp.mpi_lock);

 comps = mpi->mdev_refcnt;
 if (comps) {
  mpi->unaffiliate = 1;
  init_completion(&mpi->unref_comp);
  spin_unlock(&port->mp.mpi_lock);

  for (i = 0; i < comps; i++)
   wait_for_completion(&mpi->unref_comp);

  spin_lock(&port->mp.mpi_lock);
  mpi->unaffiliate = 0;
 }

 port->mp.mpi = ((void*)0);

 list_add_tail(&mpi->list, &mlx5_ib_unaffiliated_port_list);

 spin_unlock(&port->mp.mpi_lock);

 err = mlx5_nic_vport_unaffiliate_multiport(mpi->mdev);

 mlx5_ib_dbg(ibdev, "unaffiliated port %d\n", port_num + 1);



 if (err)
  mlx5_ib_err(ibdev, "Failed to unaffiliate port %u\n",
       port_num + 1);

 ibdev->port[port_num].roce.last_port_state = IB_PORT_DOWN;
}
