
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isert_np {int mutex; } ;
struct isert_conn {int release_work; int node; TYPE_1__* cm_id; } ;
struct TYPE_2__ {struct isert_np* context; } ;


 int isert_put_conn (struct isert_conn*) ;
 int isert_release_wq ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void
isert_handle_unbound_conn(struct isert_conn *isert_conn)
{
 struct isert_np *isert_np = isert_conn->cm_id->context;

 mutex_lock(&isert_np->mutex);
 if (!list_empty(&isert_conn->node)) {




  list_del_init(&isert_conn->node);
  isert_put_conn(isert_conn);
  queue_work(isert_release_wq, &isert_conn->release_work);
 }
 mutex_unlock(&isert_np->mutex);
}
