
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wqe_shift; int max; } ;
struct mlx5_ib_srq {TYPE_1__ msrq; struct ib_umem* umem; } ;
struct ib_umem {int dummy; } ;


 int mlx5_ib_read_user_wqe_common (struct ib_umem*,void*,int,int,int ,int ,int ,int,size_t*) ;

int mlx5_ib_read_user_wqe_srq(struct mlx5_ib_srq *srq,
         int wqe_index,
         void *buffer,
         int buflen,
         size_t *bc)
{
 struct ib_umem *umem = srq->umem;
 size_t bytes_copied;
 int ret;

 ret = mlx5_ib_read_user_wqe_common(umem,
        buffer,
        buflen,
        wqe_index,
        0,
        srq->msrq.max,
        srq->msrq.wqe_shift,
        buflen,
        &bytes_copied);

 if (ret)
  return ret;
 *bc = bytes_copied;
 return 0;
}
