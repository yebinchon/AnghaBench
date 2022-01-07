
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_mtt {int dummy; } ;
struct mlx5_klm {int dummy; } ;
struct mlx5_cache_ent {int order; int xlt; int limit; int access_mode; int page; TYPE_2__* dev; } ;
struct TYPE_3__ {int general_caps; } ;
struct TYPE_4__ {TYPE_1__ odp_caps; } ;


 int IB_ODP_SUPPORT_IMPLICIT ;
 int MLX5_IB_UMR_OCTOWORD ;


 int MLX5_IMR_MTT_ENTRIES ;
 int MLX5_KSM_PAGE_SHIFT ;
 int MLX5_MKC_ACCESS_MODE_KSM ;
 int MLX5_MKC_ACCESS_MODE_MTT ;
 int PAGE_SHIFT ;
 int mlx5_imr_ksm_entries ;

void mlx5_odp_init_mr_cache_entry(struct mlx5_cache_ent *ent)
{
 if (!(ent->dev->odp_caps.general_caps & IB_ODP_SUPPORT_IMPLICIT))
  return;

 switch (ent->order - 2) {
 case 128:
  ent->page = PAGE_SHIFT;
  ent->xlt = MLX5_IMR_MTT_ENTRIES *
      sizeof(struct mlx5_mtt) /
      MLX5_IB_UMR_OCTOWORD;
  ent->access_mode = MLX5_MKC_ACCESS_MODE_MTT;
  ent->limit = 0;
  break;

 case 129:
  ent->page = MLX5_KSM_PAGE_SHIFT;
  ent->xlt = mlx5_imr_ksm_entries *
      sizeof(struct mlx5_klm) /
      MLX5_IB_UMR_OCTOWORD;
  ent->access_mode = MLX5_MKC_ACCESS_MODE_KSM;
  ent->limit = 0;
  break;
 }
}
