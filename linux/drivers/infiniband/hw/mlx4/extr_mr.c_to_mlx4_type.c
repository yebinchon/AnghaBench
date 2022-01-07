
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlx4_mw_type { ____Placeholder_mlx4_mw_type } mlx4_mw_type ;
typedef enum ib_mw_type { ____Placeholder_ib_mw_type } ib_mw_type ;




 int MLX4_MW_TYPE_1 ;
 int MLX4_MW_TYPE_2 ;

__attribute__((used)) static enum mlx4_mw_type to_mlx4_type(enum ib_mw_type type)
{
 switch (type) {
 case 129: return MLX4_MW_TYPE_1;
 case 128: return MLX4_MW_TYPE_2;
 default: return -1;
 }
}
