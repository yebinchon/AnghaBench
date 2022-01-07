
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_comp_vectors; } ;
struct mlx4_ib_dev {int * eq_table; TYPE_1__ ib_dev; } ;
struct mlx4_dev {int dummy; } ;


 int kfree (int *) ;
 int mlx4_release_eq (struct mlx4_dev*,int ) ;

__attribute__((used)) static void mlx4_ib_free_eqs(struct mlx4_dev *dev, struct mlx4_ib_dev *ibdev)
{
 int i;
 int total_eqs = ibdev->ib_dev.num_comp_vectors;


 if (!ibdev->eq_table)
  return;


 ibdev->ib_dev.num_comp_vectors = 0;

 for (i = 0; i < total_eqs; i++)
  mlx4_release_eq(dev, ibdev->eq_table[i]);

 kfree(ibdev->eq_table);
 ibdev->eq_table = ((void*)0);
}
