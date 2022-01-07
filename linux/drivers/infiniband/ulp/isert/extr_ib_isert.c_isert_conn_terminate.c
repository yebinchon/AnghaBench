
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_conn {scalar_t__ state; int cm_id; } ;


 scalar_t__ ISER_CONN_TERMINATING ;
 int isert_info (char*,struct isert_conn*,scalar_t__) ;
 int isert_warn (char*,struct isert_conn*) ;
 int rdma_disconnect (int ) ;

__attribute__((used)) static void
isert_conn_terminate(struct isert_conn *isert_conn)
{
 int err;

 if (isert_conn->state >= ISER_CONN_TERMINATING)
  return;

 isert_info("Terminating conn %p state %d\n",
     isert_conn, isert_conn->state);
 isert_conn->state = ISER_CONN_TERMINATING;
 err = rdma_disconnect(isert_conn->cm_id);
 if (err)
  isert_warn("Failed rdma_disconnect isert_conn %p\n",
      isert_conn);
}
