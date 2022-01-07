
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;
struct mlx5_eswitch {int dummy; } ;


 int REP_IB ;
 struct mlx5_ib_dev* mlx5_eswitch_uplink_get_proto_dev (struct mlx5_eswitch*,int ) ;

struct mlx5_ib_dev *mlx5_ib_get_uplink_ibdev(struct mlx5_eswitch *esw)
{
 return mlx5_eswitch_uplink_get_proto_dev(esw, REP_IB);
}
