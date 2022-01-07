
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wqe_umr_ctrl_seg {int flags; int mkey_mask; } ;


 int MLX5_MKEY_MASK_FREE ;
 int MLX5_UMR_INLINE ;
 int cpu_to_be64 (int ) ;
 int memset (struct mlx5_wqe_umr_ctrl_seg*,int ,int) ;

__attribute__((used)) static void set_linv_umr_seg(struct mlx5_wqe_umr_ctrl_seg *umr)
{
 memset(umr, 0, sizeof(*umr));
 umr->mkey_mask = cpu_to_be64(MLX5_MKEY_MASK_FREE);
 umr->flags = MLX5_UMR_INLINE;
}
