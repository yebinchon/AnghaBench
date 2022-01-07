
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;
struct mlx5_err_cqe {int dummy; } ;


 int mlx5_dump_err_cqe (int ,struct mlx5_err_cqe*) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*) ;

__attribute__((used)) static void dump_cqe(struct mlx5_ib_dev *dev, struct mlx5_err_cqe *cqe)
{
 mlx5_ib_warn(dev, "dump error cqe\n");
 mlx5_dump_err_cqe(dev->mdev, cqe);
}
