
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_ib_mr {int order; } ;


 int MLX5_ADAPTER_PAGE_SIZE ;

__attribute__((used)) static bool use_umr_mtt_update(struct mlx5_ib_mr *mr, u64 start, u64 length)
{
 return ((u64)1 << mr->order) * MLX5_ADAPTER_PAGE_SIZE >=
  length + (start & (MLX5_ADAPTER_PAGE_SIZE - 1));
}
