
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rxe_send_wqe {scalar_t__ state; } ;
struct TYPE_2__ {int queue; } ;
struct rxe_qp {TYPE_1__ sq; } ;
struct rxe_pkt_info {int dummy; } ;
typedef enum comp_state { ____Placeholder_comp_state } comp_state ;


 int COMPST_CHECK_PSN ;
 int COMPST_COMP_WQE ;
 int COMPST_DONE ;
 int COMPST_ERROR ;
 int COMPST_EXIT ;
 struct rxe_send_wqe* queue_head (int ) ;
 scalar_t__ wqe_state_done ;
 scalar_t__ wqe_state_error ;
 scalar_t__ wqe_state_posted ;

__attribute__((used)) static inline enum comp_state get_wqe(struct rxe_qp *qp,
          struct rxe_pkt_info *pkt,
          struct rxe_send_wqe **wqe_p)
{
 struct rxe_send_wqe *wqe;




 wqe = queue_head(qp->sq.queue);
 *wqe_p = wqe;


 if (!wqe || wqe->state == wqe_state_posted)
  return pkt ? COMPST_DONE : COMPST_EXIT;


 if (wqe->state == wqe_state_done)
  return COMPST_COMP_WQE;


 if (wqe->state == wqe_state_error)
  return COMPST_ERROR;


 return pkt ? COMPST_CHECK_PSN : COMPST_EXIT;
}
