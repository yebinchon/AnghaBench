
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct isert_conn {int dummy; } ;
struct ib_send_wr {int dummy; } ;
struct TYPE_3__ {int iscsi_header; struct ib_send_wr send_wr; } ;
struct isert_cmd {TYPE_1__ tx_desc; } ;
struct iscsi_logout_rsp {int dummy; } ;
struct iscsi_conn {struct isert_conn* context; } ;
struct iscsi_cmd {int dummy; } ;


 int iscsit_build_logout_rsp (struct iscsi_cmd*,struct iscsi_conn*,struct iscsi_logout_rsp*) ;
 struct isert_cmd* iscsit_priv_cmd (struct iscsi_cmd*) ;
 int isert_create_send_desc (struct isert_conn*,struct isert_cmd*,TYPE_1__*) ;
 int isert_dbg (char*,struct isert_conn*) ;
 int isert_init_send_wr (struct isert_conn*,struct isert_cmd*,struct ib_send_wr*) ;
 int isert_init_tx_hdrs (struct isert_conn*,TYPE_1__*) ;
 int isert_post_response (struct isert_conn*,struct isert_cmd*) ;

__attribute__((used)) static int
isert_put_logout_rsp(struct iscsi_cmd *cmd, struct iscsi_conn *conn)
{
 struct isert_cmd *isert_cmd = iscsit_priv_cmd(cmd);
 struct isert_conn *isert_conn = conn->context;
 struct ib_send_wr *send_wr = &isert_cmd->tx_desc.send_wr;

 isert_create_send_desc(isert_conn, isert_cmd, &isert_cmd->tx_desc);
 iscsit_build_logout_rsp(cmd, conn, (struct iscsi_logout_rsp *)
    &isert_cmd->tx_desc.iscsi_header);
 isert_init_tx_hdrs(isert_conn, &isert_cmd->tx_desc);
 isert_init_send_wr(isert_conn, isert_cmd, send_wr);

 isert_dbg("conn %p Posting Logout Response\n", isert_conn);

 return isert_post_response(isert_conn, isert_cmd);
}
