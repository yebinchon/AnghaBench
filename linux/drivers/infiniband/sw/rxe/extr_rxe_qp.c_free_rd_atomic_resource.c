
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rxe_qp {int dummy; } ;
struct TYPE_4__ {struct rxe_qp* mr; } ;
struct TYPE_3__ {int skb; } ;
struct resp_res {scalar_t__ type; TYPE_2__ read; TYPE_1__ atomic; } ;


 scalar_t__ RXE_ATOMIC_MASK ;
 scalar_t__ RXE_READ_MASK ;
 int kfree_skb (int ) ;
 int rxe_drop_ref (struct rxe_qp*) ;

void free_rd_atomic_resource(struct rxe_qp *qp, struct resp_res *res)
{
 if (res->type == RXE_ATOMIC_MASK) {
  rxe_drop_ref(qp);
  kfree_skb(res->atomic.skb);
 } else if (res->type == RXE_READ_MASK) {
  if (res->read.mr)
   rxe_drop_ref(res->read.mr);
 }
 res->type = 0;
}
