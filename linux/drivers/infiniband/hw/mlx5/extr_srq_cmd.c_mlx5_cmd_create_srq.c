
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_srq_table {int array; } ;
struct mlx5_srq_attr {int type; } ;
struct mlx5_ib_dev {struct mlx5_srq_table srq_table; } ;
struct TYPE_2__ {int free; int refcount; int res; } ;
struct mlx5_core_srq {int srqn; TYPE_1__ common; } ;


 int GFP_KERNEL ;


 int MLX5_RES_SRQ ;
 int MLX5_RES_XRQ ;
 int MLX5_RES_XSRQ ;
 int create_srq_split (struct mlx5_ib_dev*,struct mlx5_core_srq*,struct mlx5_srq_attr*) ;
 int destroy_srq_split (struct mlx5_ib_dev*,struct mlx5_core_srq*) ;
 int init_completion (int *) ;
 int refcount_set (int *,int) ;
 int xa_err (int ) ;
 int xa_store_irq (int *,int ,struct mlx5_core_srq*,int ) ;

int mlx5_cmd_create_srq(struct mlx5_ib_dev *dev, struct mlx5_core_srq *srq,
   struct mlx5_srq_attr *in)
{
 struct mlx5_srq_table *table = &dev->srq_table;
 int err;

 switch (in->type) {
 case 128:
  srq->common.res = MLX5_RES_XSRQ;
  break;
 case 129:
  srq->common.res = MLX5_RES_XRQ;
  break;
 default:
  srq->common.res = MLX5_RES_SRQ;
 }

 err = create_srq_split(dev, srq, in);
 if (err)
  return err;

 refcount_set(&srq->common.refcount, 1);
 init_completion(&srq->common.free);

 err = xa_err(xa_store_irq(&table->array, srq->srqn, srq, GFP_KERNEL));
 if (err)
  goto err_destroy_srq_split;

 return 0;

err_destroy_srq_split:
 destroy_srq_split(dev, srq);

 return err;
}
