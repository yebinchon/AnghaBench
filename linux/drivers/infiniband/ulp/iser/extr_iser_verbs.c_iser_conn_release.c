
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_conn {int * cma_id; } ;
struct iser_conn {scalar_t__ state; int state_mutex; int ep; int conn_list; struct ib_conn ib_conn; } ;
struct TYPE_2__ {int connlist_mutex; } ;


 scalar_t__ ISER_CONN_DOWN ;
 TYPE_1__ ig ;
 int iscsi_destroy_endpoint (int ) ;
 int iser_free_ib_conn_res (struct iser_conn*,int) ;
 int iser_warn (char*,struct iser_conn*,scalar_t__) ;
 int kfree (struct iser_conn*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdma_destroy_id (int *) ;

void iser_conn_release(struct iser_conn *iser_conn)
{
 struct ib_conn *ib_conn = &iser_conn->ib_conn;

 mutex_lock(&ig.connlist_mutex);
 list_del(&iser_conn->conn_list);
 mutex_unlock(&ig.connlist_mutex);

 mutex_lock(&iser_conn->state_mutex);

 if (iser_conn->state != ISER_CONN_DOWN) {
  iser_warn("iser conn %p state %d, expected state down.\n",
     iser_conn, iser_conn->state);
  iscsi_destroy_endpoint(iser_conn->ep);
  iser_conn->state = ISER_CONN_DOWN;
 }




 iser_free_ib_conn_res(iser_conn, 1);
 mutex_unlock(&iser_conn->state_mutex);

 if (ib_conn->cma_id != ((void*)0)) {
  rdma_destroy_id(ib_conn->cma_id);
  ib_conn->cma_id = ((void*)0);
 }

 kfree(iser_conn);
}
