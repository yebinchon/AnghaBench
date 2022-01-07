
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* qp; int history; int flags; } ;
struct c4iw_ep {TYPE_2__ com; } ;
struct TYPE_3__ {int ibqp; } ;


 int QP_REFED ;
 int QP_REFERENCED ;
 int c4iw_qp_add_ref (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ref_qp(struct c4iw_ep *ep)
{
 set_bit(QP_REFERENCED, &ep->com.flags);
 set_bit(QP_REFED, &ep->com.history);
 c4iw_qp_add_ref(&ep->com.qp->ibqp);
}
