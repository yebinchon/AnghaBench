
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qp_type; } ;
struct rxe_qp {TYPE_1__ ibqp; } ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;



__attribute__((used)) static inline enum ib_qp_type qp_type(struct rxe_qp *qp)
{
 return qp->ibqp.qp_type;
}
