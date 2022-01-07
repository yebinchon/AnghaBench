
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_conn {int release_work; int mutex; int kref; int rem_wait; int login_req_comp; int login_comp; int node; int state; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int ISER_CONN_INIT ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int isert_release_work ;
 int kref_init (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static void
isert_init_conn(struct isert_conn *isert_conn)
{
 isert_conn->state = ISER_CONN_INIT;
 INIT_LIST_HEAD(&isert_conn->node);
 init_completion(&isert_conn->login_comp);
 init_completion(&isert_conn->login_req_comp);
 init_waitqueue_head(&isert_conn->rem_wait);
 kref_init(&isert_conn->kref);
 mutex_init(&isert_conn->mutex);
 INIT_WORK(&isert_conn->release_work, isert_release_work);
}
