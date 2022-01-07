
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_ib_wq {int fbc; } ;


 int MLX5_SEND_WQE_BB ;
 int mlx5_frag_buf_get_idx_last_contig_stride (int *,int ) ;
 void* mlx5_frag_buf_get_wqe (int *,int ) ;

__attribute__((used)) static void *get_sq_edge(struct mlx5_ib_wq *sq, u32 idx)
{
 void *fragment_end;

 fragment_end = mlx5_frag_buf_get_wqe
  (&sq->fbc,
   mlx5_frag_buf_get_idx_last_contig_stride(&sq->fbc, idx));

 return fragment_end + MLX5_SEND_WQE_BB;
}
