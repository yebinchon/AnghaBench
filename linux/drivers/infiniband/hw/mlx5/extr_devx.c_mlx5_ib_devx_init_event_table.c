
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_devx_event_table {int devx_nb; int event_xa_lock; int event_xa; } ;
struct mlx5_ib_dev {int mdev; struct mlx5_devx_event_table devx_event_table; } ;


 int MLX5_NB_INIT (int *,int ,int ) ;
 int NOTIFY_ANY ;
 int devx_event_notifier ;
 int mlx5_eq_notifier_register (int ,int *) ;
 int mutex_init (int *) ;
 int xa_init (int *) ;

void mlx5_ib_devx_init_event_table(struct mlx5_ib_dev *dev)
{
 struct mlx5_devx_event_table *table = &dev->devx_event_table;

 xa_init(&table->event_xa);
 mutex_init(&table->event_xa_lock);
 MLX5_NB_INIT(&table->devx_nb, devx_event_notifier, NOTIFY_ANY);
 mlx5_eq_notifier_register(dev->mdev, &table->devx_nb);
}
