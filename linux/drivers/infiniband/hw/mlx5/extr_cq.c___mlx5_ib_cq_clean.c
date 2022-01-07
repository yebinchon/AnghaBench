
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx5_ib_srq {int dummy; } ;
struct TYPE_4__ {int cons_index; int cqe_sz; } ;
struct TYPE_3__ {int cqe; } ;
struct mlx5_ib_cq {TYPE_2__ mcq; TYPE_1__ ibcq; } ;
struct mlx5_cqe64 {int op_own; int wqe_counter; int srqn; } ;


 int MLX5_CQE_OWNER_MASK ;
 int be16_to_cpu (int ) ;
 void* get_cqe (struct mlx5_ib_cq*,int) ;
 scalar_t__ get_sw_cqe (struct mlx5_ib_cq*,int) ;
 scalar_t__ is_equal_rsn (struct mlx5_cqe64*,int) ;
 int memcpy (void*,void*,int) ;
 int mlx5_cq_set_ci (TYPE_2__*) ;
 int mlx5_ib_free_srq_wqe (struct mlx5_ib_srq*,int ) ;
 int ntohl (int ) ;
 int wmb () ;

void __mlx5_ib_cq_clean(struct mlx5_ib_cq *cq, u32 rsn, struct mlx5_ib_srq *srq)
{
 struct mlx5_cqe64 *cqe64, *dest64;
 void *cqe, *dest;
 u32 prod_index;
 int nfreed = 0;
 u8 owner_bit;

 if (!cq)
  return;







 for (prod_index = cq->mcq.cons_index; get_sw_cqe(cq, prod_index); prod_index++)
  if (prod_index == cq->mcq.cons_index + cq->ibcq.cqe)
   break;




 while ((int) --prod_index - (int) cq->mcq.cons_index >= 0) {
  cqe = get_cqe(cq, prod_index & cq->ibcq.cqe);
  cqe64 = (cq->mcq.cqe_sz == 64) ? cqe : cqe + 64;
  if (is_equal_rsn(cqe64, rsn)) {
   if (srq && (ntohl(cqe64->srqn) & 0xffffff))
    mlx5_ib_free_srq_wqe(srq, be16_to_cpu(cqe64->wqe_counter));
   ++nfreed;
  } else if (nfreed) {
   dest = get_cqe(cq, (prod_index + nfreed) & cq->ibcq.cqe);
   dest64 = (cq->mcq.cqe_sz == 64) ? dest : dest + 64;
   owner_bit = dest64->op_own & MLX5_CQE_OWNER_MASK;
   memcpy(dest, cqe, cq->mcq.cqe_sz);
   dest64->op_own = owner_bit |
    (dest64->op_own & ~MLX5_CQE_OWNER_MASK);
  }
 }

 if (nfreed) {
  cq->mcq.cons_index += nfreed;



  wmb();
  mlx5_cq_set_ci(&cq->mcq);
 }
}
