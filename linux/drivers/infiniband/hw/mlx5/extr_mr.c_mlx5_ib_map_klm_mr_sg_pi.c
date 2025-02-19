
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_2__ {int length; scalar_t__ iova; } ;
struct mlx5_ib_mr {int desc_size; int max_descs; TYPE_1__ ibmr; int data_length; int pi_iova; scalar_t__ data_iova; int desc_map; scalar_t__ meta_length; scalar_t__ meta_ndescs; scalar_t__ ndescs; struct mlx5_ib_mr* klm_mr; } ;
struct ib_mr {int length; int device; } ;


 int DMA_TO_DEVICE ;
 int ib_dma_sync_single_for_cpu (int ,int ,int,int ) ;
 int ib_dma_sync_single_for_device (int ,int ,int,int ) ;
 int mlx5_ib_sg_to_klms (struct mlx5_ib_mr*,struct scatterlist*,int,unsigned int*,struct scatterlist*,int,unsigned int*) ;
 struct mlx5_ib_mr* to_mmr (struct ib_mr*) ;

__attribute__((used)) static int
mlx5_ib_map_klm_mr_sg_pi(struct ib_mr *ibmr, struct scatterlist *data_sg,
    int data_sg_nents, unsigned int *data_sg_offset,
    struct scatterlist *meta_sg, int meta_sg_nents,
    unsigned int *meta_sg_offset)
{
 struct mlx5_ib_mr *mr = to_mmr(ibmr);
 struct mlx5_ib_mr *pi_mr = mr->klm_mr;
 int n;

 pi_mr->ndescs = 0;
 pi_mr->meta_ndescs = 0;
 pi_mr->meta_length = 0;

 ib_dma_sync_single_for_cpu(ibmr->device, pi_mr->desc_map,
       pi_mr->desc_size * pi_mr->max_descs,
       DMA_TO_DEVICE);

 n = mlx5_ib_sg_to_klms(pi_mr, data_sg, data_sg_nents, data_sg_offset,
          meta_sg, meta_sg_nents, meta_sg_offset);

 ib_dma_sync_single_for_device(ibmr->device, pi_mr->desc_map,
          pi_mr->desc_size * pi_mr->max_descs,
          DMA_TO_DEVICE);


 pi_mr->data_iova = 0;
 pi_mr->ibmr.iova = 0;
 pi_mr->pi_iova = pi_mr->data_length;
 ibmr->length = pi_mr->ibmr.length;

 return n;
}
