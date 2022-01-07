
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct mlx5_ib_dev {TYPE_2__* port; } ;
struct TYPE_6__ {int * notifier_call; } ;
struct TYPE_4__ {TYPE_3__ nb; } ;
struct TYPE_5__ {TYPE_1__ roce; } ;


 int * mlx5_netdev_event ;
 int register_netdevice_notifier (TYPE_3__*) ;

__attribute__((used)) static int mlx5_add_netdev_notifier(struct mlx5_ib_dev *dev, u8 port_num)
{
 int err;

 dev->port[port_num].roce.nb.notifier_call = mlx5_netdev_event;
 err = register_netdevice_notifier(&dev->port[port_num].roce.nb);
 if (err) {
  dev->port[port_num].roce.nb.notifier_call = ((void*)0);
  return err;
 }

 return 0;
}
