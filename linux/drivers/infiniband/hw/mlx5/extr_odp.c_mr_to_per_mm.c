
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_mr {int umem; } ;
struct ib_ucontext_per_mm {int dummy; } ;
struct TYPE_2__ {struct ib_ucontext_per_mm* per_mm; } ;


 scalar_t__ WARN_ON (int) ;
 int is_odp_mr (struct mlx5_ib_mr*) ;
 TYPE_1__* to_ib_umem_odp (int ) ;

__attribute__((used)) static struct ib_ucontext_per_mm *mr_to_per_mm(struct mlx5_ib_mr *mr)
{
 if (WARN_ON(!mr || !is_odp_mr(mr)))
  return ((void*)0);

 return to_ib_umem_odp(mr->umem)->per_mm;
}
