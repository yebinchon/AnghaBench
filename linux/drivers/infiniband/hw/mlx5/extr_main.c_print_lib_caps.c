
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_ib_dev {int dummy; } ;


 int MLX5_LIB_CAP_4K_UAR ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,char*) ;

__attribute__((used)) static void print_lib_caps(struct mlx5_ib_dev *dev, u64 caps)
{
 mlx5_ib_dbg(dev, "MLX5_LIB_CAP_4K_UAR = %s\n",
      caps & MLX5_LIB_CAP_4K_UAR ? "y" : "n");
}
