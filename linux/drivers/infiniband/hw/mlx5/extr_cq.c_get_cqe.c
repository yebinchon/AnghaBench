
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fbc; } ;
struct mlx5_ib_cq {TYPE_1__ buf; } ;


 void* mlx5_frag_buf_get_wqe (int *,int) ;

__attribute__((used)) static void *get_cqe(struct mlx5_ib_cq *cq, int n)
{
 return mlx5_frag_buf_get_wqe(&cq->buf.fbc, n);
}
