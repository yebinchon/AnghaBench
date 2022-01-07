
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_eswitch {int dummy; } ;


 int MLX5_ESWITCH_NONE ;

__attribute__((used)) static inline u8 mlx5_ib_eswitch_mode(struct mlx5_eswitch *esw)
{
 return MLX5_ESWITCH_NONE;
}
