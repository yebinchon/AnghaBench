
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_conn {int stop_completion; } ;
struct iscsi_conn {struct iser_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;


 int iscsi_conn_start (struct iscsi_cls_conn*) ;
 int reinit_completion (int *) ;

__attribute__((used)) static int
iscsi_iser_conn_start(struct iscsi_cls_conn *cls_conn)
{
 struct iscsi_conn *iscsi_conn;
 struct iser_conn *iser_conn;

 iscsi_conn = cls_conn->dd_data;
 iser_conn = iscsi_conn->dd_data;
 reinit_completion(&iser_conn->stop_completion);

 return iscsi_conn_start(cls_conn);
}
