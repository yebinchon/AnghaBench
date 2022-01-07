
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cm_id {struct isert_np* context; TYPE_1__* qp; } ;
struct isert_np {int sem; int mutex; int pending; int node; int kref; int state; } ;
struct isert_conn {int sem; int mutex; int pending; int node; int kref; int state; } ;
struct TYPE_2__ {struct isert_np* qp_context; } ;


 int ISER_CONN_UP ;
 int isert_info (char*,struct isert_np*) ;
 int kref_get (int *) ;
 int list_move_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up (int *) ;

__attribute__((used)) static void
isert_connected_handler(struct rdma_cm_id *cma_id)
{
 struct isert_conn *isert_conn = cma_id->qp->qp_context;
 struct isert_np *isert_np = cma_id->context;

 isert_info("conn %p\n", isert_conn);

 mutex_lock(&isert_conn->mutex);
 isert_conn->state = ISER_CONN_UP;
 kref_get(&isert_conn->kref);
 mutex_unlock(&isert_conn->mutex);

 mutex_lock(&isert_np->mutex);
 list_move_tail(&isert_conn->node, &isert_np->pending);
 mutex_unlock(&isert_np->mutex);

 isert_info("np %p: Allow accept_np to continue\n", isert_np);
 up(&isert_np->sem);
}
