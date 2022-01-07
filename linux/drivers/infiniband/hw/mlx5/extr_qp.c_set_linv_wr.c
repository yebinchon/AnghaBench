
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_wqe_umr_ctrl_seg {int dummy; } ;
struct mlx5_mkey_seg {int dummy; } ;
struct mlx5_ib_qp {int sq; } ;


 int handle_post_send_edge (int *,void**,int,void**) ;
 int set_linv_mkey_seg (void*) ;
 int set_linv_umr_seg (void*) ;

__attribute__((used)) static void set_linv_wr(struct mlx5_ib_qp *qp, void **seg, int *size,
   void **cur_edge)
{
 set_linv_umr_seg(*seg);
 *seg += sizeof(struct mlx5_wqe_umr_ctrl_seg);
 *size += sizeof(struct mlx5_wqe_umr_ctrl_seg) / 16;
 handle_post_send_edge(&qp->sq, seg, *size, cur_edge);
 set_linv_mkey_seg(*seg);
 *seg += sizeof(struct mlx5_mkey_seg);
 *size += sizeof(struct mlx5_mkey_seg) / 16;
 handle_post_send_edge(&qp->sq, seg, *size, cur_edge);
}
