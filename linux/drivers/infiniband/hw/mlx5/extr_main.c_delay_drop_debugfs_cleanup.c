
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* dbg; } ;
struct mlx5_ib_dev {TYPE_1__ delay_drop; } ;
struct TYPE_4__ {int dir_debugfs; } ;


 int debugfs_remove_recursive (int ) ;
 int kfree (TYPE_2__*) ;

__attribute__((used)) static void delay_drop_debugfs_cleanup(struct mlx5_ib_dev *dev)
{
 if (!dev->delay_drop.dbg)
  return;
 debugfs_remove_recursive(dev->delay_drop.dbg->dir_debugfs);
 kfree(dev->delay_drop.dbg);
 dev->delay_drop.dbg = ((void*)0);
}
