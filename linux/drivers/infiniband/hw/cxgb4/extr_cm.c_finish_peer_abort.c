
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct c4iw_qp_attributes {int next_state; } ;
struct TYPE_3__ {TYPE_2__* qp; scalar_t__ cm_id; } ;
struct c4iw_ep {TYPE_1__ com; int srqe_idx; } ;
struct c4iw_dev {int dummy; } ;
struct TYPE_4__ {int rhp; } ;


 int C4IW_QP_ATTR_NEXT_STATE ;
 int C4IW_QP_STATE_ERROR ;
 int c4iw_modify_qp (int ,TYPE_2__*,int ,struct c4iw_qp_attributes*,int) ;
 int c4iw_put_ep (TYPE_1__*) ;
 int complete_cached_srq_buffers (struct c4iw_ep*,int ) ;
 int peer_abort_upcall (struct c4iw_ep*) ;
 int release_ep_resources (struct c4iw_ep*) ;

__attribute__((used)) static void finish_peer_abort(struct c4iw_dev *dev, struct c4iw_ep *ep)
{
 complete_cached_srq_buffers(ep, ep->srqe_idx);
 if (ep->com.cm_id && ep->com.qp) {
  struct c4iw_qp_attributes attrs;

  attrs.next_state = C4IW_QP_STATE_ERROR;
  c4iw_modify_qp(ep->com.qp->rhp, ep->com.qp,
          C4IW_QP_ATTR_NEXT_STATE, &attrs, 1);
 }
 peer_abort_upcall(ep);
 release_ep_resources(ep);
 c4iw_put_ep(&ep->com);
}
