
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cm_id {TYPE_1__* qp; } ;
struct isert_conn {int state; int mutex; int conn; int qp; } ;
typedef enum rdma_cm_event_type { ____Placeholder_rdma_cm_event_type } rdma_cm_event_type ;
struct TYPE_2__ {struct isert_conn* qp_context; } ;






 int ib_drain_qp (int ) ;
 int iscsit_cause_connection_reinstatement (int ,int ) ;
 int isert_conn_terminate (struct isert_conn*) ;
 int isert_handle_unbound_conn (struct isert_conn*) ;
 int isert_warn (char*,struct isert_conn*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
isert_disconnected_handler(struct rdma_cm_id *cma_id,
      enum rdma_cm_event_type event)
{
 struct isert_conn *isert_conn = cma_id->qp->qp_context;

 mutex_lock(&isert_conn->mutex);
 switch (isert_conn->state) {
 case 129:
  break;
 case 128:
  isert_conn_terminate(isert_conn);
  ib_drain_qp(isert_conn->qp);
  isert_handle_unbound_conn(isert_conn);
  break;
 case 131:
 case 130:
  iscsit_cause_connection_reinstatement(isert_conn->conn, 0);
  break;
 default:
  isert_warn("conn %p terminating in state %d\n",
      isert_conn, isert_conn->state);
 }
 mutex_unlock(&isert_conn->mutex);

 return 0;
}
