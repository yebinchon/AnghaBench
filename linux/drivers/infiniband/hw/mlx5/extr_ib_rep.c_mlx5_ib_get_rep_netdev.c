
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct mlx5_eswitch {int dummy; } ;


 int REP_ETH ;
 struct net_device* mlx5_eswitch_get_proto_dev (struct mlx5_eswitch*,int ,int ) ;

struct net_device *mlx5_ib_get_rep_netdev(struct mlx5_eswitch *esw,
       u16 vport_num)
{
 return mlx5_eswitch_get_proto_dev(esw, vport_num, REP_ETH);
}
