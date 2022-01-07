
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_multiport_info {int list; scalar_t__ ibdev; } ;
struct mlx5_ib_dev {int profile; } ;
typedef void mlx5_core_dev ;


 scalar_t__ MLX5_ESWITCH_MANAGER (void*) ;
 int MLX5_IB_STAGE_MAX ;
 int __mlx5_ib_remove (struct mlx5_ib_dev*,int ,int ) ;
 int kfree (struct mlx5_ib_multiport_info*) ;
 int list_del (int *) ;
 scalar_t__ mlx5_core_is_mp_slave (void*) ;
 int mlx5_ib_multiport_mutex ;
 int mlx5_ib_unbind_slave_port (scalar_t__,struct mlx5_ib_multiport_info*) ;
 int mlx5_ib_unregister_vport_reps (void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mlx5_ib_remove(struct mlx5_core_dev *mdev, void *context)
{
 struct mlx5_ib_multiport_info *mpi;
 struct mlx5_ib_dev *dev;

 if (MLX5_ESWITCH_MANAGER(mdev) && context == mdev) {
  mlx5_ib_unregister_vport_reps(mdev);
  return;
 }

 if (mlx5_core_is_mp_slave(mdev)) {
  mpi = context;
  mutex_lock(&mlx5_ib_multiport_mutex);
  if (mpi->ibdev)
   mlx5_ib_unbind_slave_port(mpi->ibdev, mpi);
  list_del(&mpi->list);
  mutex_unlock(&mlx5_ib_multiport_mutex);
  kfree(mpi);
  return;
 }

 dev = context;
 __mlx5_ib_remove(dev, dev->profile, MLX5_IB_STAGE_MAX);
}
