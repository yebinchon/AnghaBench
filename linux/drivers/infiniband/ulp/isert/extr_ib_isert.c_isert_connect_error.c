
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cm_id {TYPE_1__* qp; } ;
struct isert_conn {int * cm_id; int node; int qp; } ;
struct TYPE_2__ {struct isert_conn* qp_context; } ;


 int ib_drain_qp (int ) ;
 int isert_put_conn (struct isert_conn*) ;
 int list_del_init (int *) ;

__attribute__((used)) static int
isert_connect_error(struct rdma_cm_id *cma_id)
{
 struct isert_conn *isert_conn = cma_id->qp->qp_context;

 ib_drain_qp(isert_conn->qp);
 list_del_init(&isert_conn->node);
 isert_conn->cm_id = ((void*)0);
 isert_put_conn(isert_conn);

 return -1;
}
