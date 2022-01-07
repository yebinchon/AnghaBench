
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct mlx5_ib_mr {struct mlx5_ib_mr* klm_mr; TYPE_1__ ibmr; struct mlx5_ib_mr* mtt_mr; } ;
struct ib_udata {int dummy; } ;
struct ib_mr {scalar_t__ type; int device; } ;


 scalar_t__ IB_MR_TYPE_INTEGRITY ;
 int dereg_mr (int ,struct mlx5_ib_mr*) ;
 int to_mdev (int ) ;
 struct mlx5_ib_mr* to_mmr (struct ib_mr*) ;

int mlx5_ib_dereg_mr(struct ib_mr *ibmr, struct ib_udata *udata)
{
 struct mlx5_ib_mr *mmr = to_mmr(ibmr);

 if (ibmr->type == IB_MR_TYPE_INTEGRITY) {
  dereg_mr(to_mdev(mmr->mtt_mr->ibmr.device), mmr->mtt_mr);
  dereg_mr(to_mdev(mmr->klm_mr->ibmr.device), mmr->klm_mr);
 }

 dereg_mr(to_mdev(ibmr->device), mmr);

 return 0;
}
