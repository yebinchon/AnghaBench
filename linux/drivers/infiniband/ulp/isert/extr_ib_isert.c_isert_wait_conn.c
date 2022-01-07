
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_conn {int release_work; int qp; int mutex; } ;
struct iscsi_conn {struct isert_conn* context; } ;


 int ib_drain_qp (int ) ;
 int isert_conn_terminate (struct isert_conn*) ;
 int isert_info (char*,struct isert_conn*) ;
 int isert_put_unsol_pending_cmds (struct iscsi_conn*) ;
 int isert_release_wq ;
 int isert_wait4cmds (struct iscsi_conn*) ;
 int isert_wait4logout (struct isert_conn*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void isert_wait_conn(struct iscsi_conn *conn)
{
 struct isert_conn *isert_conn = conn->context;

 isert_info("Starting conn %p\n", isert_conn);

 mutex_lock(&isert_conn->mutex);
 isert_conn_terminate(isert_conn);
 mutex_unlock(&isert_conn->mutex);

 ib_drain_qp(isert_conn->qp);
 isert_put_unsol_pending_cmds(conn);
 isert_wait4cmds(conn);
 isert_wait4logout(isert_conn);

 queue_work(isert_release_wq, &isert_conn->release_work);
}
