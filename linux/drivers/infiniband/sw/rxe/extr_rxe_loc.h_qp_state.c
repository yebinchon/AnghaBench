
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qp_state; } ;
struct rxe_qp {TYPE_1__ attr; } ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;



__attribute__((used)) static inline enum ib_qp_state qp_state(struct rxe_qp *qp)
{
 return qp->attr.qp_state;
}
