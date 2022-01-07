
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_srq {int fbc; } ;


 void* mlx5_frag_buf_get_wqe (int *,int) ;

__attribute__((used)) static void *get_wqe(struct mlx5_ib_srq *srq, int n)
{
 return mlx5_frag_buf_get_wqe(&srq->fbc, n);
}
