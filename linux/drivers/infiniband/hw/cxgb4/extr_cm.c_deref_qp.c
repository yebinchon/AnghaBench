
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int history; int flags; TYPE_1__* qp; } ;
struct c4iw_ep {TYPE_2__ com; } ;
struct TYPE_3__ {int ibqp; } ;


 int QP_DEREFED ;
 int QP_REFERENCED ;
 int c4iw_qp_rem_ref (int *) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void deref_qp(struct c4iw_ep *ep)
{
 c4iw_qp_rem_ref(&ep->com.qp->ibqp);
 clear_bit(QP_REFERENCED, &ep->com.flags);
 set_bit(QP_DEREFED, &ep->com.history);
}
