
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct iser_conn {scalar_t__ state; int state_mutex; struct iscsi_conn* iscsi_conn; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;
struct iscsi_conn {struct iser_conn* dd_data; int session; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;


 int EINVAL ;
 scalar_t__ ISER_CONN_UP ;
 int iscsi_conn_bind (struct iscsi_cls_session*,struct iscsi_cls_conn*,int) ;
 struct iscsi_endpoint* iscsi_lookup_endpoint (scalar_t__) ;
 int iser_alloc_rx_descriptors (struct iser_conn*,int ) ;
 int iser_err (char*,...) ;
 int iser_info (char*,struct iscsi_conn*,struct iser_conn*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
iscsi_iser_conn_bind(struct iscsi_cls_session *cls_session,
       struct iscsi_cls_conn *cls_conn,
       uint64_t transport_eph,
       int is_leading)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iser_conn *iser_conn;
 struct iscsi_endpoint *ep;
 int error;

 error = iscsi_conn_bind(cls_session, cls_conn, is_leading);
 if (error)
  return error;



 ep = iscsi_lookup_endpoint(transport_eph);
 if (!ep) {
  iser_err("can't bind eph %llx\n",
    (unsigned long long)transport_eph);
  return -EINVAL;
 }
 iser_conn = ep->dd_data;

 mutex_lock(&iser_conn->state_mutex);
 if (iser_conn->state != ISER_CONN_UP) {
  error = -EINVAL;
  iser_err("iser_conn %p state is %d, teardown started\n",
    iser_conn, iser_conn->state);
  goto out;
 }

 error = iser_alloc_rx_descriptors(iser_conn, conn->session);
 if (error)
  goto out;




 iser_info("binding iscsi conn %p to iser_conn %p\n", conn, iser_conn);

 conn->dd_data = iser_conn;
 iser_conn->iscsi_conn = conn;

out:
 mutex_unlock(&iser_conn->state_mutex);
 return error;
}
