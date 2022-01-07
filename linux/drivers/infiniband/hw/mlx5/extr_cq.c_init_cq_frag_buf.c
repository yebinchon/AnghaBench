
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_cq_buf {int nent; int cqe_size; } ;
struct mlx5_ib_cq {int dummy; } ;
struct mlx5_cqe64 {int op_own; } ;


 int MLX5_CQE_INVALID ;
 void* get_cqe (struct mlx5_ib_cq*,int) ;

__attribute__((used)) static void init_cq_frag_buf(struct mlx5_ib_cq *cq,
        struct mlx5_ib_cq_buf *buf)
{
 int i;
 void *cqe;
 struct mlx5_cqe64 *cqe64;

 for (i = 0; i < buf->nent; i++) {
  cqe = get_cqe(cq, i);
  cqe64 = buf->cqe_size == 64 ? cqe : cqe + 64;
  cqe64->op_own = MLX5_CQE_INVALID << 4;
 }
}
