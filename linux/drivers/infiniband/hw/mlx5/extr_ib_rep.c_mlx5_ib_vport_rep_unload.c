
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int netdev_lock; int * netdev; } ;
struct mlx5_ib_port {int * rep; TYPE_1__ roce; } ;
struct mlx5_ib_dev {int profile; struct mlx5_ib_port* port; } ;
struct mlx5_eswitch_rep {size_t vport_index; scalar_t__ vport; TYPE_2__* rep_data; } ;
struct TYPE_4__ {int * priv; } ;


 int MLX5_IB_STAGE_MAX ;
 scalar_t__ MLX5_VPORT_UPLINK ;
 size_t REP_IB ;
 int __mlx5_ib_remove (struct mlx5_ib_dev*,int ,int ) ;
 struct mlx5_ib_dev* mlx5_ib_rep_to_dev (struct mlx5_eswitch_rep*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void
mlx5_ib_vport_rep_unload(struct mlx5_eswitch_rep *rep)
{
 struct mlx5_ib_dev *dev = mlx5_ib_rep_to_dev(rep);
 struct mlx5_ib_port *port;

 port = &dev->port[rep->vport_index];
 write_lock(&port->roce.netdev_lock);
 port->roce.netdev = ((void*)0);
 write_unlock(&port->roce.netdev_lock);
 rep->rep_data[REP_IB].priv = ((void*)0);
 port->rep = ((void*)0);

 if (rep->vport == MLX5_VPORT_UPLINK)
  __mlx5_ib_remove(dev, dev->profile, MLX5_IB_STAGE_MAX);
}
