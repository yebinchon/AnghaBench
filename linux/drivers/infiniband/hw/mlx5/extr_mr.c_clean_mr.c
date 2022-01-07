
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5_ib_mr {int allocated_from_cache; TYPE_3__* sig; } ;
struct mlx5_ib_dev {int mdev; } ;
struct TYPE_5__ {int psv_idx; } ;
struct TYPE_4__ {int psv_idx; } ;
struct TYPE_6__ {TYPE_2__ psv_wire; TYPE_1__ psv_memory; } ;


 int destroy_mkey (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ;
 int kfree (TYPE_3__*) ;
 scalar_t__ mlx5_core_destroy_psv (int ,int ) ;
 int mlx5_free_priv_descs (struct mlx5_ib_mr*) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int ) ;

__attribute__((used)) static void clean_mr(struct mlx5_ib_dev *dev, struct mlx5_ib_mr *mr)
{
 int allocated_from_cache = mr->allocated_from_cache;

 if (mr->sig) {
  if (mlx5_core_destroy_psv(dev->mdev,
       mr->sig->psv_memory.psv_idx))
   mlx5_ib_warn(dev, "failed to destroy mem psv %d\n",
         mr->sig->psv_memory.psv_idx);
  if (mlx5_core_destroy_psv(dev->mdev,
       mr->sig->psv_wire.psv_idx))
   mlx5_ib_warn(dev, "failed to destroy wire psv %d\n",
         mr->sig->psv_wire.psv_idx);
  kfree(mr->sig);
  mr->sig = ((void*)0);
 }

 if (!allocated_from_cache) {
  destroy_mkey(dev, mr);
  mlx5_free_priv_descs(mr);
 }
}
