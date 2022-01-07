
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedr_iw_ep {TYPE_1__* cm_id; } ;
struct qed_iwarp_cm_event_params {int dummy; } ;
struct TYPE_2__ {int (* rem_ref ) (TYPE_1__*) ;} ;


 int IW_CM_EVENT_CLOSE ;
 int qedr_iw_issue_event (void*,struct qed_iwarp_cm_event_params*,int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
qedr_iw_close_event(void *context, struct qed_iwarp_cm_event_params *params)
{
 struct qedr_iw_ep *ep = (struct qedr_iw_ep *)context;

 if (ep->cm_id) {
  qedr_iw_issue_event(context, params, IW_CM_EVENT_CLOSE);

  ep->cm_id->rem_ref(ep->cm_id);
  ep->cm_id = ((void*)0);
 }
}
