
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_mtt {int dummy; } ;
struct mlx5_ib_mr {int dummy; } ;
struct ib_pd {int dummy; } ;


 int MLX5_MKC_ACCESS_MODE_MTT ;
 int PAGE_SHIFT ;
 int _mlx5_alloc_mkey_descs (struct ib_pd*,struct mlx5_ib_mr*,int,int,int ,int ,int *,int) ;

__attribute__((used)) static int mlx5_alloc_mem_reg_descs(struct ib_pd *pd, struct mlx5_ib_mr *mr,
        int ndescs, u32 *in, int inlen)
{
 return _mlx5_alloc_mkey_descs(pd, mr, ndescs, sizeof(struct mlx5_mtt),
          PAGE_SHIFT, MLX5_MKC_ACCESS_MODE_MTT, in,
          inlen);
}
