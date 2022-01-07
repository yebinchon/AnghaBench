
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_eswitch {int dummy; } ;


 int REP_IB ;
 struct mlx5_ib_dev* mlx5_eswitch_get_proto_dev (struct mlx5_eswitch*,int ,int ) ;

struct mlx5_ib_dev *mlx5_ib_get_rep_ibdev(struct mlx5_eswitch *esw,
       u16 vport_num)
{
 return mlx5_eswitch_get_proto_dev(esw, vport_num, REP_IB);
}
