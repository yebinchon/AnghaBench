
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rdma_cm_id {scalar_t__ context; } ;
struct TYPE_4__ {int private_data; } ;
struct TYPE_5__ {TYPE_1__ conn; } ;
struct rdma_cm_event {int event; int status; TYPE_2__ param; } ;
struct TYPE_6__ {int * cma_id; } ;
struct iser_conn {int state_mutex; TYPE_3__ ib_conn; int state; } ;


 int ISER_CONN_DOWN ;
 int iser_addr_handler (struct rdma_cm_id*) ;
 int iser_cleanup_handler (struct rdma_cm_id*,int) ;
 int iser_connect_error (struct rdma_cm_id*) ;
 int iser_connected_handler (struct rdma_cm_id*,int ) ;
 int iser_err (char*,int ,int) ;
 int iser_info (char*,int ,...) ;
 int iser_route_handler (struct rdma_cm_id*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdma_event_msg (int) ;
 int rdma_reject_msg (struct rdma_cm_id*,int ) ;

__attribute__((used)) static int iser_cma_handler(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
{
 struct iser_conn *iser_conn;
 int ret = 0;

 iser_conn = (struct iser_conn *)cma_id->context;
 iser_info("%s (%d): status %d conn %p id %p\n",
    rdma_event_msg(event->event), event->event,
    event->status, cma_id->context, cma_id);

 mutex_lock(&iser_conn->state_mutex);
 switch (event->event) {
 case 137:
  iser_addr_handler(cma_id);
  break;
 case 130:
  iser_route_handler(cma_id);
  break;
 case 133:
  iser_connected_handler(cma_id, event->param.conn.private_data);
  break;
 case 132:
  iser_info("Connection rejected: %s\n",
    rdma_reject_msg(cma_id, event->status));

 case 138:
 case 131:
 case 136:
 case 128:
  iser_connect_error(cma_id);
  break;
 case 134:
 case 139:
 case 129:
  iser_cleanup_handler(cma_id, 0);
  break;
 case 135:






  iser_cleanup_handler(cma_id, 1);
  if (iser_conn->state != ISER_CONN_DOWN) {
   iser_conn->ib_conn.cma_id = ((void*)0);
   ret = 1;
  }
  break;
 default:
  iser_err("Unexpected RDMA CM event: %s (%d)\n",
    rdma_event_msg(event->event), event->event);
  break;
 }
 mutex_unlock(&iser_conn->state_mutex);

 return ret;
}
