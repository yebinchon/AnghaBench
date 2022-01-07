
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_pf_eq {int pool; int wq; int work; int core; int irq_nb; } ;
struct mlx5_ib_dev {int mdev; } ;


 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int mempool_destroy (int ) ;
 int mlx5_eq_destroy_generic (int ,int ) ;
 int mlx5_eq_disable (int ,int ,int *) ;

__attribute__((used)) static int
mlx5_ib_destroy_pf_eq(struct mlx5_ib_dev *dev, struct mlx5_ib_pf_eq *eq)
{
 int err;

 mlx5_eq_disable(dev->mdev, eq->core, &eq->irq_nb);
 err = mlx5_eq_destroy_generic(dev->mdev, eq->core);
 cancel_work_sync(&eq->work);
 destroy_workqueue(eq->wq);
 mempool_destroy(eq->pool);

 return err;
}
