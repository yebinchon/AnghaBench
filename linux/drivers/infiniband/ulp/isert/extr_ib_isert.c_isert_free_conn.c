
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_conn {int qp; } ;
struct iscsi_conn {struct isert_conn* context; } ;


 int ib_drain_qp (int ) ;
 int isert_put_conn (struct isert_conn*) ;

__attribute__((used)) static void isert_free_conn(struct iscsi_conn *conn)
{
 struct isert_conn *isert_conn = conn->context;

 ib_drain_qp(isert_conn->qp);
 isert_put_conn(isert_conn);
}
