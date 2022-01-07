
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;


 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 int MLX5_UARS_IN_PAGE ;
 int uar_4k ;

__attribute__((used)) static inline int get_uars_per_sys_page(struct mlx5_ib_dev *dev, bool lib_support)
{
 return lib_support && MLX5_CAP_GEN(dev->mdev, uar_4k) ?
    MLX5_UARS_IN_PAGE : 1;
}
