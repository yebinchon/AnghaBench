
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_multiport_info {struct mlx5_ib_dev* ibdev; } ;
struct mlx5_ib_dev {int dummy; } ;


 int mlx5_ib_multiport_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct mlx5_ib_dev *mlx5_ib_get_ibdev_from_mpi(struct mlx5_ib_multiport_info *mpi)
{
 struct mlx5_ib_dev *dev;

 mutex_lock(&mlx5_ib_multiport_mutex);
 dev = mpi->ibdev;
 mutex_unlock(&mlx5_ib_multiport_mutex);
 return dev;
}
