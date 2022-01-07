
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx5_ib_profile {int dummy; } ;
struct mlx5_ib_dev {int is_rep; int num_ports; struct mlx5_core_dev* mdev; TYPE_4__* port; int ib_dev; } ;
struct mlx5_eswitch_rep {scalar_t__ vport; int vport_index; TYPE_3__* rep_data; } ;
struct TYPE_6__ {int eswitch; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct TYPE_5__ {int netdev; } ;
struct TYPE_8__ {TYPE_1__ roce; struct mlx5_eswitch_rep* rep; } ;
struct TYPE_7__ {struct mlx5_ib_dev* priv; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MLX5_VPORT_UPLINK ;
 size_t REP_IB ;
 int __mlx5_ib_add (struct mlx5_ib_dev*,struct mlx5_ib_profile const*) ;
 struct mlx5_ib_dev* ib_alloc_device (int ,int ) ;
 int ib_dealloc_device (int *) ;
 int ib_dev ;
 TYPE_4__* kcalloc (int,int,int ) ;
 int mlx5_eswitch_get_total_vports (struct mlx5_core_dev*) ;
 int mlx5_ib_dev ;
 int mlx5_ib_get_rep_netdev (int ,scalar_t__) ;
 int mlx5_ib_set_vport_rep (struct mlx5_core_dev*,struct mlx5_eswitch_rep*) ;
 struct mlx5_ib_profile uplink_rep_profile ;

__attribute__((used)) static int
mlx5_ib_vport_rep_load(struct mlx5_core_dev *dev, struct mlx5_eswitch_rep *rep)
{
 int num_ports = mlx5_eswitch_get_total_vports(dev);
 const struct mlx5_ib_profile *profile;
 struct mlx5_ib_dev *ibdev;
 int vport_index;

 if (rep->vport == MLX5_VPORT_UPLINK)
  profile = &uplink_rep_profile;
 else
  return mlx5_ib_set_vport_rep(dev, rep);

 ibdev = ib_alloc_device(mlx5_ib_dev, ib_dev);
 if (!ibdev)
  return -ENOMEM;

 ibdev->port = kcalloc(num_ports, sizeof(*ibdev->port),
         GFP_KERNEL);
 if (!ibdev->port) {
  ib_dealloc_device(&ibdev->ib_dev);
  return -ENOMEM;
 }

 ibdev->is_rep = 1;
 vport_index = rep->vport_index;
 ibdev->port[vport_index].rep = rep;
 ibdev->port[vport_index].roce.netdev =
  mlx5_ib_get_rep_netdev(dev->priv.eswitch, rep->vport);
 ibdev->mdev = dev;
 ibdev->num_ports = num_ports;

 if (!__mlx5_ib_add(ibdev, profile))
  return -EINVAL;

 rep->rep_data[REP_IB].priv = ibdev;

 return 0;
}
