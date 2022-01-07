
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx4_ib_srq {int dummy; } ;
struct TYPE_6__ {int cons_index; } ;
struct TYPE_5__ {int cqe; } ;
struct TYPE_4__ {int entry_size; } ;
struct mlx4_ib_cq {TYPE_3__ mcq; TYPE_2__ ibcq; TYPE_1__ buf; } ;
struct mlx4_cqe {int owner_sr_opcode; int wqe_index; int vlan_my_qpn; } ;


 int MLX4_CQE_IS_SEND_MASK ;
 int MLX4_CQE_OWNER_MASK ;
 int MLX4_CQE_QPN_MASK ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 struct mlx4_cqe* get_cqe (struct mlx4_ib_cq*,int) ;
 scalar_t__ get_sw_cqe (struct mlx4_ib_cq*,int) ;
 int memcpy (struct mlx4_cqe*,struct mlx4_cqe*,int) ;
 int mlx4_cq_set_ci (TYPE_3__*) ;
 int mlx4_ib_free_srq_wqe (struct mlx4_ib_srq*,int ) ;
 int wmb () ;

void __mlx4_ib_cq_clean(struct mlx4_ib_cq *cq, u32 qpn, struct mlx4_ib_srq *srq)
{
 u32 prod_index;
 int nfreed = 0;
 struct mlx4_cqe *cqe, *dest;
 u8 owner_bit;
 int cqe_inc = cq->buf.entry_size == 64 ? 1 : 0;
 for (prod_index = cq->mcq.cons_index; get_sw_cqe(cq, prod_index); ++prod_index)
  if (prod_index == cq->mcq.cons_index + cq->ibcq.cqe)
   break;





 while ((int) --prod_index - (int) cq->mcq.cons_index >= 0) {
  cqe = get_cqe(cq, prod_index & cq->ibcq.cqe);
  cqe += cqe_inc;

  if ((be32_to_cpu(cqe->vlan_my_qpn) & MLX4_CQE_QPN_MASK) == qpn) {
   if (srq && !(cqe->owner_sr_opcode & MLX4_CQE_IS_SEND_MASK))
    mlx4_ib_free_srq_wqe(srq, be16_to_cpu(cqe->wqe_index));
   ++nfreed;
  } else if (nfreed) {
   dest = get_cqe(cq, (prod_index + nfreed) & cq->ibcq.cqe);
   dest += cqe_inc;

   owner_bit = dest->owner_sr_opcode & MLX4_CQE_OWNER_MASK;
   memcpy(dest, cqe, sizeof *cqe);
   dest->owner_sr_opcode = owner_bit |
    (dest->owner_sr_opcode & ~MLX4_CQE_OWNER_MASK);
  }
 }

 if (nfreed) {
  cq->mcq.cons_index += nfreed;




  wmb();
  mlx4_cq_set_ci(&cq->mcq);
 }
}
