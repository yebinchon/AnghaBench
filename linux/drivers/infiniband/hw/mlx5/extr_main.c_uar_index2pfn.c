
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_dev {TYPE_1__* mdev; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int bar_addr; } ;


 scalar_t__ MLX5_CAP_GEN (TYPE_1__*,int ) ;
 int MLX5_UARS_IN_PAGE ;
 int PAGE_SHIFT ;
 int uar_4k ;

__attribute__((used)) static phys_addr_t uar_index2pfn(struct mlx5_ib_dev *dev,
     int uar_idx)
{
 int fw_uars_per_page;

 fw_uars_per_page = MLX5_CAP_GEN(dev->mdev, uar_4k) ? MLX5_UARS_IN_PAGE : 1;

 return (dev->mdev->bar_addr >> PAGE_SHIFT) + uar_idx / fw_uars_per_page;
}
