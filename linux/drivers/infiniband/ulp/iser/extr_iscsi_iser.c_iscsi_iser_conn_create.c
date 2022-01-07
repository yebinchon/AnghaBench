
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iscsi_conn {int max_recv_dlength; } ;
struct iscsi_cls_session {int dummy; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;


 int ISER_RECV_DATA_SEG_LEN ;
 struct iscsi_cls_conn* iscsi_conn_setup (struct iscsi_cls_session*,int ,int ) ;

__attribute__((used)) static struct iscsi_cls_conn *
iscsi_iser_conn_create(struct iscsi_cls_session *cls_session,
         uint32_t conn_idx)
{
 struct iscsi_conn *conn;
 struct iscsi_cls_conn *cls_conn;

 cls_conn = iscsi_conn_setup(cls_session, 0, conn_idx);
 if (!cls_conn)
  return ((void*)0);
 conn = cls_conn->dd_data;





 conn->max_recv_dlength = ISER_RECV_DATA_SEG_LEN;

 return cls_conn;
}
