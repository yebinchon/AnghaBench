
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_wqe_ctrl_seg {int qpn_ds; } ;
struct mlx5_ib_wq {int wqe_shift; int wqe_cnt; int offset; } ;
struct TYPE_4__ {struct ib_umem* umem; } ;
struct mlx5_ib_qp_base {TYPE_2__ ubuffer; } ;
struct TYPE_3__ {struct mlx5_ib_qp_base base; } ;
struct mlx5_ib_qp {struct mlx5_ib_wq sq; TYPE_1__ trans_qp; } ;
struct ib_umem {int dummy; } ;


 int EINVAL ;
 int MLX5_WQE_CTRL_DS_MASK ;
 int MLX5_WQE_DS_UNITS ;
 int be32_to_cpu (int ) ;
 int mlx5_ib_read_user_wqe_common (struct ib_umem*,void*,int,int,int ,int ,int ,size_t,size_t*) ;

int mlx5_ib_read_user_wqe_sq(struct mlx5_ib_qp *qp,
        int wqe_index,
        void *buffer,
        int buflen,
        size_t *bc)
{
 struct mlx5_ib_qp_base *base = &qp->trans_qp.base;
 struct ib_umem *umem = base->ubuffer.umem;
 struct mlx5_ib_wq *wq = &qp->sq;
 struct mlx5_wqe_ctrl_seg *ctrl;
 size_t bytes_copied;
 size_t bytes_copied2;
 size_t wqe_length;
 int ret;
 int ds;

 if (buflen < sizeof(*ctrl))
  return -EINVAL;


 ret = mlx5_ib_read_user_wqe_common(umem,
        buffer,
        buflen,
        wqe_index,
        wq->offset,
        wq->wqe_cnt,
        wq->wqe_shift,
        buflen,
        &bytes_copied);
 if (ret)
  return ret;


 if (bytes_copied < sizeof(*ctrl))
  return -EINVAL;

 ctrl = buffer;
 ds = be32_to_cpu(ctrl->qpn_ds) & MLX5_WQE_CTRL_DS_MASK;
 wqe_length = ds * MLX5_WQE_DS_UNITS;


 if (bytes_copied >= wqe_length) {
  *bc = bytes_copied;
  return 0;
 }





 ret = mlx5_ib_read_user_wqe_common(umem,
        buffer + bytes_copied,
        buflen - bytes_copied,
        0,
        wq->offset,
        wq->wqe_cnt,
        wq->wqe_shift,
        wqe_length - bytes_copied,
        &bytes_copied2);

 if (ret)
  return ret;
 *bc = bytes_copied + bytes_copied2;
 return 0;
}
