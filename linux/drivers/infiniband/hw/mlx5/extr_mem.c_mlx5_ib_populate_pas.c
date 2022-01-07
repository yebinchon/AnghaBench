
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;
struct ib_umem {int dummy; } ;
typedef int __be64 ;


 void __mlx5_ib_populate_pas (struct mlx5_ib_dev*,struct ib_umem*,int,int ,int ,int *,int) ;
 int ib_umem_num_pages (struct ib_umem*) ;

void mlx5_ib_populate_pas(struct mlx5_ib_dev *dev, struct ib_umem *umem,
     int page_shift, __be64 *pas, int access_flags)
{
 return __mlx5_ib_populate_pas(dev, umem, page_shift, 0,
          ib_umem_num_pages(umem), pas,
          access_flags);
}
