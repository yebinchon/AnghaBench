
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct mlx5_ib_mr {int meta_length; struct mlx5_ib_mr* pi_mr; struct mlx5_ib_mr* klm_mr; struct mlx5_ib_mr* mtt_mr; scalar_t__ pi_iova; scalar_t__ meta_ndescs; scalar_t__ data_iova; scalar_t__ data_length; scalar_t__ ndescs; } ;
struct ib_mr {scalar_t__ type; TYPE_1__* sig_attrs; scalar_t__ iova; } ;
struct TYPE_2__ {int meta_length; } ;


 int ENOMEM ;
 scalar_t__ IB_MR_TYPE_INTEGRITY ;
 int WARN_ON (int) ;
 int mlx5_ib_map_klm_mr_sg_pi (struct ib_mr*,struct scatterlist*,int,unsigned int*,struct scatterlist*,int,unsigned int*) ;
 int mlx5_ib_map_mtt_mr_sg_pi (struct ib_mr*,struct scatterlist*,int,unsigned int*,struct scatterlist*,int,unsigned int*) ;
 int mlx5_ib_map_pa_mr_sg_pi (struct ib_mr*,struct scatterlist*,int,unsigned int*,struct scatterlist*,int,unsigned int*) ;
 struct mlx5_ib_mr* to_mmr (struct ib_mr*) ;
 scalar_t__ unlikely (int) ;

int mlx5_ib_map_mr_sg_pi(struct ib_mr *ibmr, struct scatterlist *data_sg,
    int data_sg_nents, unsigned int *data_sg_offset,
    struct scatterlist *meta_sg, int meta_sg_nents,
    unsigned int *meta_sg_offset)
{
 struct mlx5_ib_mr *mr = to_mmr(ibmr);
 struct mlx5_ib_mr *pi_mr = ((void*)0);
 int n;

 WARN_ON(ibmr->type != IB_MR_TYPE_INTEGRITY);

 mr->ndescs = 0;
 mr->data_length = 0;
 mr->data_iova = 0;
 mr->meta_ndescs = 0;
 mr->pi_iova = 0;






 n = mlx5_ib_map_pa_mr_sg_pi(ibmr, data_sg, data_sg_nents,
        data_sg_offset, meta_sg, meta_sg_nents,
        meta_sg_offset);
 if (n == data_sg_nents + meta_sg_nents)
  goto out;
 pi_mr = mr->mtt_mr;
 n = mlx5_ib_map_mtt_mr_sg_pi(ibmr, data_sg, data_sg_nents,
         data_sg_offset, meta_sg, meta_sg_nents,
         meta_sg_offset);
 if (n == data_sg_nents + meta_sg_nents)
  goto out;

 pi_mr = mr->klm_mr;
 n = mlx5_ib_map_klm_mr_sg_pi(ibmr, data_sg, data_sg_nents,
         data_sg_offset, meta_sg, meta_sg_nents,
         meta_sg_offset);
 if (unlikely(n != data_sg_nents + meta_sg_nents))
  return -ENOMEM;

out:

 ibmr->iova = 0;
 mr->pi_mr = pi_mr;
 if (pi_mr)
  ibmr->sig_attrs->meta_length = pi_mr->meta_length;
 else
  ibmr->sig_attrs->meta_length = mr->meta_length;

 return 0;
}
