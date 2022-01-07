
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_conn {int logout_posted; } ;
struct iscsi_conn {struct isert_conn* context; } ;
struct iscsi_cmd {int dummy; } ;


 int EINVAL ;






 int isert_err (char*,int) ;
 int isert_put_logout_rsp (struct iscsi_cmd*,struct iscsi_conn*) ;
 int isert_put_nopin (struct iscsi_cmd*,struct iscsi_conn*,int) ;
 int isert_put_reject (struct iscsi_cmd*,struct iscsi_conn*) ;
 int isert_put_response (struct iscsi_conn*,struct iscsi_cmd*) ;
 int isert_put_text_rsp (struct iscsi_cmd*,struct iscsi_conn*) ;
 int isert_put_tm_rsp (struct iscsi_cmd*,struct iscsi_conn*) ;

__attribute__((used)) static int
isert_response_queue(struct iscsi_conn *conn, struct iscsi_cmd *cmd, int state)
{
 struct isert_conn *isert_conn = conn->context;
 int ret;

 switch (state) {
 case 133:
  ret = isert_put_logout_rsp(cmd, conn);
  if (!ret)
   isert_conn->logout_posted = 1;
  break;
 case 132:
  ret = isert_put_nopin(cmd, conn, 1);
  break;
 case 129:
  ret = isert_put_tm_rsp(cmd, conn);
  break;
 case 131:
  ret = isert_put_reject(cmd, conn);
  break;
 case 128:
  ret = isert_put_text_rsp(cmd, conn);
  break;
 case 130:




  ret = isert_put_response(conn, cmd);
  break;
 default:
  isert_err("Unknown response state: 0x%02x\n", state);
  ret = -EINVAL;
  break;
 }

 return ret;
}
