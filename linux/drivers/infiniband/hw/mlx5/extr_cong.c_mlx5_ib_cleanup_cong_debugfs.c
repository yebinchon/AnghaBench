
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct mlx5_ib_dev {TYPE_1__* port; } ;
struct TYPE_4__ {int root; } ;
struct TYPE_3__ {TYPE_2__* dbg_cc_params; } ;


 int debugfs_remove_recursive (int ) ;
 int kfree (TYPE_2__*) ;
 int mlx5_debugfs_root ;

void mlx5_ib_cleanup_cong_debugfs(struct mlx5_ib_dev *dev, u8 port_num)
{
 if (!mlx5_debugfs_root ||
     !dev->port[port_num].dbg_cc_params ||
     !dev->port[port_num].dbg_cc_params->root)
  return;

 debugfs_remove_recursive(dev->port[port_num].dbg_cc_params->root);
 kfree(dev->port[port_num].dbg_cc_params);
 dev->port[port_num].dbg_cc_params = ((void*)0);
}
