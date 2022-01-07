
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usnic_transport_spec {int dummy; } ;
struct usnic_ib_qp_grp_flow {int dummy; } ;
struct TYPE_8__ {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;} ;
struct usnic_ib_qp_grp {int state; int grp_id; int lock; TYPE_4__ ibqp; TYPE_2__* vf; } ;
struct TYPE_7__ {TYPE_4__* qp; } ;
struct ib_event {int event; TYPE_3__ element; int * device; } ;
typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;
struct TYPE_6__ {TYPE_1__* pf; } ;
struct TYPE_5__ {int ib_dev; } ;


 int EFAULT ;
 int EINVAL ;
 int IB_EVENT_QP_FATAL ;





 int IS_ERR_OR_NULL (struct usnic_ib_qp_grp_flow*) ;
 int PTR_ERR (struct usnic_ib_qp_grp_flow*) ;
 struct usnic_ib_qp_grp_flow* create_and_add_flow (struct usnic_ib_qp_grp*,struct usnic_transport_spec*) ;
 int disable_qp_grp (struct usnic_ib_qp_grp*) ;
 int enable_qp_grp (struct usnic_ib_qp_grp*) ;
 int release_and_remove_all_flows (struct usnic_ib_qp_grp*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct ib_event*,int ) ;
 int stub2 (struct ib_event*,int ) ;
 int stub3 (struct ib_event*,int ) ;
 int usnic_err (char*,int ,int ,int ) ;
 int usnic_ib_qp_grp_state_to_string (int) ;
 int usnic_info (char*,int ,int ,int ) ;

int usnic_ib_qp_grp_modify(struct usnic_ib_qp_grp *qp_grp,
    enum ib_qp_state new_state,
    void *data)
{
 int status = 0;
 struct ib_event ib_event;
 enum ib_qp_state old_state;
 struct usnic_transport_spec *trans_spec;
 struct usnic_ib_qp_grp_flow *qp_flow;

 old_state = qp_grp->state;
 trans_spec = (struct usnic_transport_spec *) data;

 spin_lock(&qp_grp->lock);
 switch (new_state) {
 case 130:
  switch (old_state) {
  case 130:

   break;
  case 131:
   release_and_remove_all_flows(qp_grp);
   status = 0;
   break;
  case 129:
  case 128:
  case 132:
   status = disable_qp_grp(qp_grp);
   release_and_remove_all_flows(qp_grp);
   break;
  default:
   status = -EINVAL;
  }
  break;
 case 131:
  switch (old_state) {
  case 130:
   if (trans_spec) {
    qp_flow = create_and_add_flow(qp_grp,
        trans_spec);
    if (IS_ERR_OR_NULL(qp_flow)) {
     status = qp_flow ? PTR_ERR(qp_flow) : -EFAULT;
     break;
    }
   } else {



    status = 0;
   }
   break;
  case 131:
   if (trans_spec) {
    qp_flow = create_and_add_flow(qp_grp,
        trans_spec);
    if (IS_ERR_OR_NULL(qp_flow)) {
     status = qp_flow ? PTR_ERR(qp_flow) : -EFAULT;
     break;
    }
   } else {




    status = -EINVAL;
   }
   break;
  case 129:
   status = disable_qp_grp(qp_grp);
   break;
  case 128:
   status = disable_qp_grp(qp_grp);
   break;
  default:
   status = -EINVAL;
  }
  break;
 case 129:
  switch (old_state) {
  case 131:
   status = enable_qp_grp(qp_grp);
   break;
  default:
   status = -EINVAL;
  }
  break;
 case 128:
  switch (old_state) {
  case 129:

   break;
  default:
   status = -EINVAL;
  }
  break;
 case 132:
  ib_event.device = &qp_grp->vf->pf->ib_dev;
  ib_event.element.qp = &qp_grp->ibqp;
  ib_event.event = IB_EVENT_QP_FATAL;

  switch (old_state) {
  case 130:
   qp_grp->ibqp.event_handler(&ib_event,
     qp_grp->ibqp.qp_context);
   break;
  case 131:
   release_and_remove_all_flows(qp_grp);
   qp_grp->ibqp.event_handler(&ib_event,
     qp_grp->ibqp.qp_context);
   break;
  case 129:
  case 128:
   status = disable_qp_grp(qp_grp);
   release_and_remove_all_flows(qp_grp);
   qp_grp->ibqp.event_handler(&ib_event,
     qp_grp->ibqp.qp_context);
   break;
  default:
   status = -EINVAL;
  }
  break;
 default:
  status = -EINVAL;
 }
 spin_unlock(&qp_grp->lock);

 if (!status) {
  qp_grp->state = new_state;
  usnic_info("Transitioned %u from %s to %s",
  qp_grp->grp_id,
  usnic_ib_qp_grp_state_to_string(old_state),
  usnic_ib_qp_grp_state_to_string(new_state));
 } else {
  usnic_err("Failed to transition %u from %s to %s",
  qp_grp->grp_id,
  usnic_ib_qp_grp_state_to_string(old_state),
  usnic_ib_qp_grp_state_to_string(new_state));
 }

 return status;
}
