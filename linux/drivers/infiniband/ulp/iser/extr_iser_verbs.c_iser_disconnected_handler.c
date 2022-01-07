
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {scalar_t__ context; } ;
struct iser_conn {scalar_t__ iscsi_conn; } ;


 int ISCSI_ERR_CONN_FAILED ;
 int iscsi_conn_failure (scalar_t__,int ) ;
 scalar_t__ iser_conn_terminate (struct iser_conn*) ;
 int iser_err (char*) ;

__attribute__((used)) static void iser_disconnected_handler(struct rdma_cm_id *cma_id)
{
 struct iser_conn *iser_conn = (struct iser_conn *)cma_id->context;

 if (iser_conn_terminate(iser_conn)) {
  if (iser_conn->iscsi_conn)
   iscsi_conn_failure(iser_conn->iscsi_conn,
        ISCSI_ERR_CONN_FAILED);
  else
   iser_err("iscsi_iser connection isn't bound\n");
 }
}
