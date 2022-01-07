
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx5_ib_dev {TYPE_4__* port; } ;
struct mlx5_eswitch_rep {int vport_index; int vport; TYPE_1__* rep_data; } ;
struct TYPE_6__ {int eswitch; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct TYPE_7__ {int netdev_lock; int netdev; } ;
struct TYPE_8__ {TYPE_3__ roce; struct mlx5_eswitch_rep* rep; } ;
struct TYPE_5__ {struct mlx5_ib_dev* priv; } ;


 size_t REP_IB ;
 int mlx5_ib_get_rep_netdev (int ,int ) ;
 struct mlx5_ib_dev* mlx5_ib_get_uplink_ibdev (int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int
mlx5_ib_set_vport_rep(struct mlx5_core_dev *dev, struct mlx5_eswitch_rep *rep)
{
 struct mlx5_ib_dev *ibdev;
 int vport_index;

 ibdev = mlx5_ib_get_uplink_ibdev(dev->priv.eswitch);
 vport_index = rep->vport_index;

 ibdev->port[vport_index].rep = rep;
 rep->rep_data[REP_IB].priv = ibdev;
 write_lock(&ibdev->port[vport_index].roce.netdev_lock);
 ibdev->port[vport_index].roce.netdev =
  mlx5_ib_get_rep_netdev(dev->priv.eswitch, rep->vport);
 write_unlock(&ibdev->port[vport_index].roce.netdev_lock);

 return 0;
}
