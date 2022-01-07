
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_conn {int state_mutex; int stop_completion; int * iscsi_conn; } ;
struct iscsi_conn {struct iser_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;


 int complete (int *) ;
 int iscsi_conn_stop (struct iscsi_cls_conn*,int) ;
 int iser_conn_terminate (struct iser_conn*) ;
 int iser_info (char*,struct iscsi_conn*,struct iser_conn*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unbind_iser_conn_mutex ;

__attribute__((used)) static void
iscsi_iser_conn_stop(struct iscsi_cls_conn *cls_conn, int flag)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iser_conn *iser_conn = conn->dd_data;

 iser_info("stopping iscsi_conn: %p, iser_conn: %p\n", conn, iser_conn);





 if (iser_conn) {
  mutex_lock(&iser_conn->state_mutex);
  mutex_lock(&unbind_iser_conn_mutex);
  iser_conn_terminate(iser_conn);
  iscsi_conn_stop(cls_conn, flag);


  iser_conn->iscsi_conn = ((void*)0);
  conn->dd_data = ((void*)0);
  mutex_unlock(&unbind_iser_conn_mutex);

  complete(&iser_conn->stop_completion);
  mutex_unlock(&iser_conn->state_mutex);
 } else {
  iscsi_conn_stop(cls_conn, flag);
 }
}
