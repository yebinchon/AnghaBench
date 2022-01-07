
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_qp_init_attr {scalar_t__ qp_type; int recv_cq; } ;


 scalar_t__ MLX5_IB_QPT_DCI ;
 scalar_t__ MLX5_IB_QPT_DCT ;
 int MLX5_RES_SCAT_DATA32_CQE ;
 int MLX5_RES_SCAT_DATA64_CQE ;
 int MLX5_SET (void*,void*,int ,int ) ;
 int cs_res ;
 void* dctc ;
 int mlx5_ib_get_cqe_size (int ) ;

__attribute__((used)) static void configure_responder_scat_cqe(struct ib_qp_init_attr *init_attr,
      void *qpc)
{
 int rcqe_sz;

 if (init_attr->qp_type == MLX5_IB_QPT_DCI)
  return;

 rcqe_sz = mlx5_ib_get_cqe_size(init_attr->recv_cq);

 if (init_attr->qp_type == MLX5_IB_QPT_DCT) {
  if (rcqe_sz == 128)
   MLX5_SET(dctc, qpc, cs_res, MLX5_RES_SCAT_DATA64_CQE);

  return;
 }

 MLX5_SET(qpc, qpc, cs_res,
   rcqe_sz == 128 ? MLX5_RES_SCAT_DATA64_CQE :
      MLX5_RES_SCAT_DATA32_CQE);
}
