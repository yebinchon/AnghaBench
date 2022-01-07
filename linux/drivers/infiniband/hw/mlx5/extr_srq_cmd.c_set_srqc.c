
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_srq_attr {int flags; int log_page_size; int wqe_shift; int log_size; int page_offset; int lwm; int pd; int xrcd; int cqn; int db_record; } ;


 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_SET64 (void*,void*,int ,int ) ;
 int MLX5_SRQ_FLAG_WQ_SIG ;
 int cqn ;
 int dbr_addr ;
 int log_page_size ;
 int log_rq_stride ;
 int log_srq_size ;
 int lwm ;
 int page_offset ;
 int pd ;
 int wq_signature ;
 int xrcd ;

__attribute__((used)) static void set_srqc(void *srqc, struct mlx5_srq_attr *in)
{
 MLX5_SET(srqc, srqc, wq_signature, !!(in->flags
   & MLX5_SRQ_FLAG_WQ_SIG));
 MLX5_SET(srqc, srqc, log_page_size, in->log_page_size);
 MLX5_SET(srqc, srqc, log_rq_stride, in->wqe_shift);
 MLX5_SET(srqc, srqc, log_srq_size, in->log_size);
 MLX5_SET(srqc, srqc, page_offset, in->page_offset);
 MLX5_SET(srqc, srqc, lwm, in->lwm);
 MLX5_SET(srqc, srqc, pd, in->pd);
 MLX5_SET64(srqc, srqc, dbr_addr, in->db_record);
 MLX5_SET(srqc, srqc, xrcd, in->xrcd);
 MLX5_SET(srqc, srqc, cqn, in->cqn);
}
