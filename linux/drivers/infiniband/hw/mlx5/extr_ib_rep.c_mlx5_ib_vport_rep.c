
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_eswitch_rep {int dummy; } ;
struct mlx5_eswitch {int dummy; } ;


 struct mlx5_eswitch_rep* mlx5_eswitch_vport_rep (struct mlx5_eswitch*,int ) ;

struct mlx5_eswitch_rep *mlx5_ib_vport_rep(struct mlx5_eswitch *esw,
        u16 vport_num)
{
 return mlx5_eswitch_vport_rep(esw, vport_num);
}
