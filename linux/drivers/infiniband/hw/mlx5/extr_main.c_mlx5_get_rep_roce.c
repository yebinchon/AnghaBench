
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx5_roce {int netdev_lock; } ;
struct mlx5_ib_port {struct mlx5_roce roce; TYPE_3__* rep; } ;
struct mlx5_ib_dev {int num_ports; struct mlx5_ib_port* port; TYPE_2__* mdev; } ;
struct mlx5_eswitch {int dummy; } ;
struct TYPE_6__ {int vport; } ;
struct TYPE_4__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_5__ {TYPE_1__ priv; } ;


 struct net_device* mlx5_ib_get_rep_netdev (struct mlx5_eswitch*,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static struct mlx5_roce *mlx5_get_rep_roce(struct mlx5_ib_dev *dev,
        struct net_device *ndev,
        u8 *port_num)
{
 struct mlx5_eswitch *esw = dev->mdev->priv.eswitch;
 struct net_device *rep_ndev;
 struct mlx5_ib_port *port;
 int i;

 for (i = 0; i < dev->num_ports; i++) {
  port = &dev->port[i];
  if (!port->rep)
   continue;

  read_lock(&port->roce.netdev_lock);
  rep_ndev = mlx5_ib_get_rep_netdev(esw,
        port->rep->vport);
  if (rep_ndev == ndev) {
   read_unlock(&port->roce.netdev_lock);
   *port_num = i + 1;
   return &port->roce;
  }
  read_unlock(&port->roce.netdev_lock);
 }

 return ((void*)0);
}
