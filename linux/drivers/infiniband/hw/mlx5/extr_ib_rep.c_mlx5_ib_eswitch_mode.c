
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_eswitch {int dummy; } ;


 int mlx5_eswitch_mode (struct mlx5_eswitch*) ;

u8 mlx5_ib_eswitch_mode(struct mlx5_eswitch *esw)
{
 return mlx5_eswitch_mode(esw);
}
