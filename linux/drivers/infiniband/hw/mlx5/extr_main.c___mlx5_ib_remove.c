
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_profile {TYPE_1__* stage; } ;
struct mlx5_ib_dev {int ib_dev; int port; } ;
struct TYPE_2__ {int (* cleanup ) (struct mlx5_ib_dev*) ;} ;


 int ib_dealloc_device (int *) ;
 int kfree (int ) ;
 int stub1 (struct mlx5_ib_dev*) ;

void __mlx5_ib_remove(struct mlx5_ib_dev *dev,
        const struct mlx5_ib_profile *profile,
        int stage)
{

 while (stage) {
  stage--;
  if (profile->stage[stage].cleanup)
   profile->stage[stage].cleanup(dev);
 }

 kfree(dev->port);
 ib_dealloc_device(&dev->ib_dev);
}
