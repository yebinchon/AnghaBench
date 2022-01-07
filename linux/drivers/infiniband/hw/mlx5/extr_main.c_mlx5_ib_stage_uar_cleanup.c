
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_ib_dev {TYPE_2__* mdev; } ;
struct TYPE_3__ {int uar; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;


 int mlx5_put_uars_page (TYPE_2__*,int ) ;

__attribute__((used)) static void mlx5_ib_stage_uar_cleanup(struct mlx5_ib_dev *dev)
{
 mlx5_put_uars_page(dev->mdev, dev->mdev->priv.uar);
}
