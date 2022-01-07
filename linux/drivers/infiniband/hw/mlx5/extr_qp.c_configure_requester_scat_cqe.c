
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;
struct mlx5_ib_create_qp {int flags; } ;
struct ib_qp_init_attr {int qp_type; scalar_t__ sq_sig_type; int send_cq; } ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;


 int IB_QPT_UC ;
 int IB_QPT_UD ;
 scalar_t__ IB_SIGNAL_ALL_WR ;
 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 scalar_t__ MLX5_IB_QPT_DCI ;
 int MLX5_QP_FLAG_ALLOW_SCATTER_CQE ;
 int MLX5_REQ_SCAT_DATA32_CQE ;
 int MLX5_REQ_SCAT_DATA64_CQE ;
 int MLX5_SET (void*,void*,int ,int ) ;
 int cs_req ;
 int dc_req_scat_data_cqe ;
 int mlx5_ib_get_cqe_size (int ) ;

__attribute__((used)) static void configure_requester_scat_cqe(struct mlx5_ib_dev *dev,
      struct ib_qp_init_attr *init_attr,
      struct mlx5_ib_create_qp *ucmd,
      void *qpc)
{
 enum ib_qp_type qpt = init_attr->qp_type;
 int scqe_sz;
 bool allow_scat_cqe = 0;

 if (qpt == IB_QPT_UC || qpt == IB_QPT_UD)
  return;

 if (ucmd)
  allow_scat_cqe = ucmd->flags & MLX5_QP_FLAG_ALLOW_SCATTER_CQE;

 if (!allow_scat_cqe && init_attr->sq_sig_type != IB_SIGNAL_ALL_WR)
  return;

 scqe_sz = mlx5_ib_get_cqe_size(init_attr->send_cq);
 if (scqe_sz == 128) {
  MLX5_SET(qpc, qpc, cs_req, MLX5_REQ_SCAT_DATA64_CQE);
  return;
 }

 if (init_attr->qp_type != MLX5_IB_QPT_DCI ||
     MLX5_CAP_GEN(dev->mdev, dc_req_scat_data_cqe))
  MLX5_SET(qpc, qpc, cs_req, MLX5_REQ_SCAT_DATA32_CQE);
}
