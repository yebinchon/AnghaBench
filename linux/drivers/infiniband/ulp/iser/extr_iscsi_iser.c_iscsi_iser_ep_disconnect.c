
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_conn {int state_mutex; int state; int release_work; scalar_t__ iscsi_conn; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;


 int INIT_WORK (int *,int ) ;
 int ISER_CONN_DOWN ;
 int iscsi_destroy_endpoint (struct iscsi_endpoint*) ;
 int iser_conn_release (struct iser_conn*) ;
 int iser_conn_terminate (struct iser_conn*) ;
 int iser_info (char*,struct iscsi_endpoint*,struct iser_conn*) ;
 int iser_release_work ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;
 int release_wq ;

__attribute__((used)) static void
iscsi_iser_ep_disconnect(struct iscsi_endpoint *ep)
{
 struct iser_conn *iser_conn = ep->dd_data;

 iser_info("ep %p iser conn %p\n", ep, iser_conn);

 mutex_lock(&iser_conn->state_mutex);
 iser_conn_terminate(iser_conn);







 if (iser_conn->iscsi_conn) {
  INIT_WORK(&iser_conn->release_work, iser_release_work);
  queue_work(release_wq, &iser_conn->release_work);
  mutex_unlock(&iser_conn->state_mutex);
 } else {
  iser_conn->state = ISER_CONN_DOWN;
  mutex_unlock(&iser_conn->state_mutex);
  iser_conn_release(iser_conn);
 }

 iscsi_destroy_endpoint(ep);
}
