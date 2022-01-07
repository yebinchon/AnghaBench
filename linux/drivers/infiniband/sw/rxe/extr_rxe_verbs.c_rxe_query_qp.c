
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_qp {int dummy; } ;
struct ib_qp_init_attr {int dummy; } ;
struct ib_qp_attr {int dummy; } ;
struct ib_qp {int dummy; } ;


 int rxe_qp_to_attr (struct rxe_qp*,struct ib_qp_attr*,int) ;
 int rxe_qp_to_init (struct rxe_qp*,struct ib_qp_init_attr*) ;
 struct rxe_qp* to_rqp (struct ib_qp*) ;

__attribute__((used)) static int rxe_query_qp(struct ib_qp *ibqp, struct ib_qp_attr *attr,
   int mask, struct ib_qp_init_attr *init)
{
 struct rxe_qp *qp = to_rqp(ibqp);

 rxe_qp_to_init(qp, init);
 rxe_qp_to_attr(qp, attr, mask);

 return 0;
}
