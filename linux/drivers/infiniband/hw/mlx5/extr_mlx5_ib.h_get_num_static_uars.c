
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;
struct mlx5_bfreg_info {int num_static_sys_pages; int lib_uar_4k; } ;


 int get_uars_per_sys_page (struct mlx5_ib_dev*,int ) ;

__attribute__((used)) static inline int get_num_static_uars(struct mlx5_ib_dev *dev,
          struct mlx5_bfreg_info *bfregi)
{
 return get_uars_per_sys_page(dev, bfregi->lib_uar_4k) * bfregi->num_static_sys_pages;
}
