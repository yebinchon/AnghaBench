
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_wqe_umr_ctrl_seg {int mkey_mask; int xlt_octowords; int flags; } ;
struct mlx5_ib_mr {int ndescs; int meta_ndescs; int desc_size; } ;


 int cpu_to_be16 (int ) ;
 int frwr_mkey_mask (int) ;
 int get_xlt_octo (int) ;
 int memset (struct mlx5_wqe_umr_ctrl_seg*,int ,int) ;

__attribute__((used)) static void set_reg_umr_seg(struct mlx5_wqe_umr_ctrl_seg *umr,
       struct mlx5_ib_mr *mr, u8 flags, bool atomic)
{
 int size = (mr->ndescs + mr->meta_ndescs) * mr->desc_size;

 memset(umr, 0, sizeof(*umr));

 umr->flags = flags;
 umr->xlt_octowords = cpu_to_be16(get_xlt_octo(size));
 umr->mkey_mask = frwr_mkey_mask(atomic);
}
