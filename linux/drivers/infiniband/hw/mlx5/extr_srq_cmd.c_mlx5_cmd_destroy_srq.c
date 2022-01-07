
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_srq_table {int array; } ;
struct mlx5_ib_dev {struct mlx5_srq_table srq_table; } ;
struct TYPE_2__ {int free; } ;
struct mlx5_core_srq {TYPE_1__ common; int srqn; } ;


 int destroy_srq_split (struct mlx5_ib_dev*,struct mlx5_core_srq*) ;
 int mlx5_core_res_put (TYPE_1__*) ;
 int wait_for_completion (int *) ;
 struct mlx5_core_srq* xa_erase_irq (int *,int ) ;

void mlx5_cmd_destroy_srq(struct mlx5_ib_dev *dev, struct mlx5_core_srq *srq)
{
 struct mlx5_srq_table *table = &dev->srq_table;
 struct mlx5_core_srq *tmp;
 int err;

 tmp = xa_erase_irq(&table->array, srq->srqn);
 if (!tmp || tmp != srq)
  return;

 err = destroy_srq_split(dev, srq);
 if (err)
  return;

 mlx5_core_res_put(&srq->common);
 wait_for_completion(&srq->common.free);
}
