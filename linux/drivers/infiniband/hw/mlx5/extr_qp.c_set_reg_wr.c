
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_wqe_umr_ctrl_seg {int dummy; } ;
struct mlx5_wqe_data_seg {int dummy; } ;
struct mlx5_mkey_seg {int dummy; } ;
struct TYPE_6__ {int device; int pd; } ;
struct mlx5_ib_qp {int sq; TYPE_3__ ibqp; } ;
struct TYPE_4__ {int device; } ;
struct mlx5_ib_pd {TYPE_1__ ibpd; } ;
struct mlx5_ib_mr {int ndescs; int meta_ndescs; int desc_size; int descs; } ;
struct mlx5_ib_dev {int mdev; } ;
struct TYPE_5__ {int send_flags; } ;
struct ib_reg_wr {int access; int key; TYPE_2__ wr; int mr; } ;


 int ALIGN (int,int) ;
 int EINVAL ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_SEND_INLINE ;
 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 int MLX5_IB_SQ_UMR_INLINE_THRESHOLD ;
 int MLX5_SEND_WQE_BB ;
 int MLX5_UMR_CHECK_NOT_FREE ;
 int MLX5_UMR_INLINE ;
 int handle_post_send_edge (int *,void**,int,void**) ;
 int memcpy_send_wqe (int *,void**,void**,int*,int ,int) ;
 int mlx5_ib_can_use_umr (struct mlx5_ib_dev*,int) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,...) ;
 int set_reg_data_seg (void*,struct mlx5_ib_mr*,struct mlx5_ib_pd*) ;
 int set_reg_mkey_seg (void*,struct mlx5_ib_mr*,int ,int) ;
 int set_reg_umr_seg (void*,struct mlx5_ib_mr*,int ,int) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_mr* to_mmr (int ) ;
 struct mlx5_ib_pd* to_mpd (int ) ;
 int umr_modify_entity_size_disabled ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_reg_wr(struct mlx5_ib_qp *qp,
        const struct ib_reg_wr *wr,
        void **seg, int *size, void **cur_edge,
        bool check_not_free)
{
 struct mlx5_ib_mr *mr = to_mmr(wr->mr);
 struct mlx5_ib_pd *pd = to_mpd(qp->ibqp.pd);
 struct mlx5_ib_dev *dev = to_mdev(pd->ibpd.device);
 int mr_list_size = (mr->ndescs + mr->meta_ndescs) * mr->desc_size;
 bool umr_inline = mr_list_size <= MLX5_IB_SQ_UMR_INLINE_THRESHOLD;
 bool atomic = wr->access & IB_ACCESS_REMOTE_ATOMIC;
 u8 flags = 0;

 if (!mlx5_ib_can_use_umr(dev, atomic)) {
  mlx5_ib_warn(to_mdev(qp->ibqp.device),
        "Fast update of %s for MR is disabled\n",
        (MLX5_CAP_GEN(dev->mdev,
        umr_modify_entity_size_disabled)) ?
         "entity size" :
         "atomic access");
  return -EINVAL;
 }

 if (unlikely(wr->wr.send_flags & IB_SEND_INLINE)) {
  mlx5_ib_warn(to_mdev(qp->ibqp.device),
        "Invalid IB_SEND_INLINE send flag\n");
  return -EINVAL;
 }

 if (check_not_free)
  flags |= MLX5_UMR_CHECK_NOT_FREE;
 if (umr_inline)
  flags |= MLX5_UMR_INLINE;

 set_reg_umr_seg(*seg, mr, flags, atomic);
 *seg += sizeof(struct mlx5_wqe_umr_ctrl_seg);
 *size += sizeof(struct mlx5_wqe_umr_ctrl_seg) / 16;
 handle_post_send_edge(&qp->sq, seg, *size, cur_edge);

 set_reg_mkey_seg(*seg, mr, wr->key, wr->access);
 *seg += sizeof(struct mlx5_mkey_seg);
 *size += sizeof(struct mlx5_mkey_seg) / 16;
 handle_post_send_edge(&qp->sq, seg, *size, cur_edge);

 if (umr_inline) {
  memcpy_send_wqe(&qp->sq, cur_edge, seg, size, mr->descs,
    mr_list_size);
  *size = ALIGN(*size, MLX5_SEND_WQE_BB >> 4);
 } else {
  set_reg_data_seg(*seg, mr, pd);
  *seg += sizeof(struct mlx5_wqe_data_seg);
  *size += (sizeof(struct mlx5_wqe_data_seg) / 16);
 }
 return 0;
}
