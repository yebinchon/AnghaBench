
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {scalar_t__ context; } ;
struct iser_conn {int state; } ;


 int ISER_CONN_TERMINATING ;

__attribute__((used)) static void iser_connect_error(struct rdma_cm_id *cma_id)
{
 struct iser_conn *iser_conn;

 iser_conn = (struct iser_conn *)cma_id->context;
 iser_conn->state = ISER_CONN_TERMINATING;
}
