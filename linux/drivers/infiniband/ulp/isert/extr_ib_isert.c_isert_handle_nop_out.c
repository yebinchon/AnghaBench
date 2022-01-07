
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_conn {struct iscsi_conn* conn; } ;
struct isert_cmd {int dummy; } ;
struct iser_rx_desc {int dummy; } ;
struct iscsi_nopout {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {int dummy; } ;


 int iscsit_process_nop_out (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_nopout*) ;
 int iscsit_setup_nop_out (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_nopout*) ;

__attribute__((used)) static int
isert_handle_nop_out(struct isert_conn *isert_conn, struct isert_cmd *isert_cmd,
       struct iscsi_cmd *cmd, struct iser_rx_desc *rx_desc,
       unsigned char *buf)
{
 struct iscsi_conn *conn = isert_conn->conn;
 struct iscsi_nopout *hdr = (struct iscsi_nopout *)buf;
 int rc;

 rc = iscsit_setup_nop_out(conn, cmd, hdr);
 if (rc < 0)
  return rc;




 return iscsit_process_nop_out(conn, cmd, hdr);
}
