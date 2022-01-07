
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int invalidate_rkey; } ;
struct ib_send_wr {struct ib_send_wr* next; scalar_t__ num_sge; scalar_t__ send_flags; TYPE_1__ ex; struct ib_cqe* wr_cqe; int opcode; } ;
struct ib_mr {int rkey; } ;
struct ib_cqe {int dummy; } ;


 int IB_WR_LOCAL_INV ;

__attribute__((used)) static inline void
iser_inv_rkey(struct ib_send_wr *inv_wr,
       struct ib_mr *mr,
       struct ib_cqe *cqe,
       struct ib_send_wr *next_wr)
{
 inv_wr->opcode = IB_WR_LOCAL_INV;
 inv_wr->wr_cqe = cqe;
 inv_wr->ex.invalidate_rkey = mr->rkey;
 inv_wr->send_flags = 0;
 inv_wr->num_sge = 0;
 inv_wr->next = next_wr;
}
