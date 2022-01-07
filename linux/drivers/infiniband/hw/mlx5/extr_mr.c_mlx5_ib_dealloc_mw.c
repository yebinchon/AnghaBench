
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int key; } ;
struct mlx5_ib_mw {TYPE_3__ mmkey; } ;
struct mlx5_ib_dev {TYPE_2__* mdev; int mr_srcu; } ;
struct ib_mw {int device; } ;
struct TYPE_4__ {int mkey_table; } ;
struct TYPE_5__ {TYPE_1__ priv; } ;


 int CONFIG_INFINIBAND_ON_DEMAND_PAGING ;
 scalar_t__ IS_ENABLED (int ) ;
 int kfree (struct mlx5_ib_mw*) ;
 int mlx5_base_mkey (int ) ;
 int mlx5_core_destroy_mkey (TYPE_2__*,TYPE_3__*) ;
 int synchronize_srcu (int *) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_mw* to_mmw (struct ib_mw*) ;
 int xa_erase_irq (int *,int ) ;

int mlx5_ib_dealloc_mw(struct ib_mw *mw)
{
 struct mlx5_ib_dev *dev = to_mdev(mw->device);
 struct mlx5_ib_mw *mmw = to_mmw(mw);
 int err;

 if (IS_ENABLED(CONFIG_INFINIBAND_ON_DEMAND_PAGING)) {
  xa_erase_irq(&dev->mdev->priv.mkey_table,
        mlx5_base_mkey(mmw->mmkey.key));




  synchronize_srcu(&dev->mr_srcu);
 }

 err = mlx5_core_destroy_mkey(dev->mdev, &mmw->mmkey);
 if (err)
  return err;
 kfree(mmw);
 return 0;
}
