
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_conn {int cm_id; } ;
struct ib_event {int event; } ;




 int ib_event_msg (int) ;
 int isert_err (char*,int ,int,struct isert_conn*) ;
 int isert_warn (char*) ;
 int rdma_notify (int ,int const) ;

__attribute__((used)) static void
isert_qp_event_callback(struct ib_event *e, void *context)
{
 struct isert_conn *isert_conn = context;

 isert_err("%s (%d): conn %p\n",
    ib_event_msg(e->event), e->event, isert_conn);

 switch (e->event) {
 case 129:
  rdma_notify(isert_conn->cm_id, 129);
  break;
 case 128:
  isert_warn("Reached TX IB_EVENT_QP_LAST_WQE_REACHED\n");
  break;
 default:
  break;
 }
}
