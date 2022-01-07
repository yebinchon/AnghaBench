
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_cq {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int dummy; } ;


 int rxe_cq_disable (struct rxe_cq*) ;
 int rxe_drop_ref (struct rxe_cq*) ;
 struct rxe_cq* to_rcq (struct ib_cq*) ;

__attribute__((used)) static void rxe_destroy_cq(struct ib_cq *ibcq, struct ib_udata *udata)
{
 struct rxe_cq *cq = to_rcq(ibcq);

 rxe_cq_disable(cq);

 rxe_drop_ref(cq);
}
