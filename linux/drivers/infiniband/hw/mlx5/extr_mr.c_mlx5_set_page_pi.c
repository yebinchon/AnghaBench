
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_ib_mr {scalar_t__ meta_ndescs; scalar_t__ max_descs; int ndescs; int * descs; } ;
struct ib_mr {int dummy; } ;
typedef int __be64 ;


 int ENOMEM ;
 int MLX5_EN_RD ;
 int MLX5_EN_WR ;
 int cpu_to_be64 (int) ;
 struct mlx5_ib_mr* to_mmr (struct ib_mr*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mlx5_set_page_pi(struct ib_mr *ibmr, u64 addr)
{
 struct mlx5_ib_mr *mr = to_mmr(ibmr);
 __be64 *descs;

 if (unlikely(mr->ndescs + mr->meta_ndescs == mr->max_descs))
  return -ENOMEM;

 descs = mr->descs;
 descs[mr->ndescs + mr->meta_ndescs++] =
  cpu_to_be64(addr | MLX5_EN_RD | MLX5_EN_WR);

 return 0;
}
