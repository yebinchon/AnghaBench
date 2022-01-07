
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_conn {int qp; scalar_t__ cma_id; } ;
struct iser_conn {scalar_t__ iscsi_conn; int state; struct ib_conn ib_conn; } ;


 int ISER_CONN_TERMINATING ;
 int ISER_CONN_UP ;
 int ib_drain_sq (int ) ;
 int iscsi_suspend_queue (scalar_t__) ;
 int iser_conn_state_comp_exch (struct iser_conn*,int ,int ) ;
 int iser_err (char*,struct iser_conn*,int) ;
 int iser_info (char*,struct iser_conn*,int ) ;
 int rdma_disconnect (scalar_t__) ;

int iser_conn_terminate(struct iser_conn *iser_conn)
{
 struct ib_conn *ib_conn = &iser_conn->ib_conn;
 int err = 0;


 if (!iser_conn_state_comp_exch(iser_conn, ISER_CONN_UP,
           ISER_CONN_TERMINATING))
  return 0;

 iser_info("iser_conn %p state %d\n", iser_conn, iser_conn->state);


 if (iser_conn->iscsi_conn)
  iscsi_suspend_queue(iser_conn->iscsi_conn);






 if (ib_conn->cma_id) {
  err = rdma_disconnect(ib_conn->cma_id);
  if (err)
   iser_err("Failed to disconnect, conn: 0x%p err %d\n",
     iser_conn, err);


  ib_drain_sq(ib_conn->qp);
 }

 return 1;
}
