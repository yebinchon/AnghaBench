
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cm_id {TYPE_1__* qp; struct isert_np* context; } ;
struct rdma_cm_event {int event; int status; } ;
struct isert_np {struct rdma_cm_id* cm_id; } ;
struct isert_conn {int dev_removed; int state; int rem_wait; } ;
struct TYPE_2__ {struct isert_conn* qp_context; } ;


 int ISER_CONN_DOWN ;
 int isert_connect_error (struct rdma_cm_id*) ;
 int isert_connect_request (struct rdma_cm_id*,struct rdma_cm_event*) ;
 int isert_connected_handler (struct rdma_cm_id*) ;
 int isert_disconnected_handler (struct rdma_cm_id*,int) ;
 int isert_err (char*,int) ;
 int isert_info (char*,int ,...) ;
 int isert_np_cma_handler (struct isert_np*,int) ;
 int kfree (struct isert_conn*) ;
 int rdma_event_msg (int) ;
 int rdma_reject_msg (struct rdma_cm_id*,int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int
isert_cma_handler(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
{
 struct isert_np *isert_np = cma_id->context;
 struct isert_conn *isert_conn;
 int ret = 0;

 isert_info("%s (%d): status %d id %p np %p\n",
     rdma_event_msg(event->event), event->event,
     event->status, cma_id, cma_id->context);

 if (isert_np->cm_id == cma_id)
  return isert_np_cma_handler(cma_id->context, event->event);

 switch (event->event) {
 case 134:
  ret = isert_connect_request(cma_id, event);
  if (ret)
   isert_err("failed handle connect request %d\n", ret);
  break;
 case 131:
  isert_connected_handler(cma_id);
  break;
 case 136:
 case 132:
 case 129:
  ret = isert_disconnected_handler(cma_id, event->event);
  break;
 case 133:
  isert_conn = cma_id->qp->qp_context;
  isert_conn->dev_removed = 1;
  isert_disconnected_handler(cma_id, event->event);
  wait_event_interruptible(isert_conn->rem_wait,
      isert_conn->state == ISER_CONN_DOWN);
  kfree(isert_conn);




  return 1;
 case 130:
  isert_info("Connection rejected: %s\n",
      rdma_reject_msg(cma_id, event->status));

 case 128:
 case 135:
  ret = isert_connect_error(cma_id);
  break;
 default:
  isert_err("Unhandled RDMA CMA event: %d\n", event->event);
  break;
 }

 return ret;
}
