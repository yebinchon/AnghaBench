
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_mr {struct mlx5_ib_mr* parent; } ;
struct ib_umem_odp {int dying; struct mlx5_ib_mr* private; } ;



__attribute__((used)) static int check_parent(struct ib_umem_odp *odp,
          struct mlx5_ib_mr *parent)
{
 struct mlx5_ib_mr *mr = odp->private;

 return mr && mr->parent == parent && !odp->dying;
}
