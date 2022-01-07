
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; TYPE_1__* qp; } ;
struct c4iw_ep {TYPE_2__ com; } ;
struct TYPE_3__ {int srq; } ;


 int ABORT_REQ_IN_PROGRESS ;
 int read_tcb (struct c4iw_ep*) ;
 int send_abort_req (struct c4iw_ep*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int send_abort(struct c4iw_ep *ep)
{
 if (!ep->com.qp || !ep->com.qp->srq) {
  send_abort_req(ep);
  return 0;
 }
 set_bit(ABORT_REQ_IN_PROGRESS, &ep->com.flags);
 read_tcb(ep);
 return 0;
}
