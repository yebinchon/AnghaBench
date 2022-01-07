
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_srq_table {int array; } ;
struct mlx5_ib_dev {struct mlx5_srq_table srq_table; } ;
struct TYPE_2__ {int refcount; } ;
struct mlx5_core_srq {TYPE_1__ common; } ;


 int refcount_inc (int *) ;
 struct mlx5_core_srq* xa_load (int *,int ) ;
 int xa_lock (int *) ;
 int xa_unlock (int *) ;

struct mlx5_core_srq *mlx5_cmd_get_srq(struct mlx5_ib_dev *dev, u32 srqn)
{
 struct mlx5_srq_table *table = &dev->srq_table;
 struct mlx5_core_srq *srq;

 xa_lock(&table->array);
 srq = xa_load(&table->array, srqn);
 if (srq)
  refcount_inc(&srq->common.refcount);
 xa_unlock(&table->array);

 return srq;
}
