
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_conn {int login_comp; int login_req_comp; struct isert_conn* context; } ;
struct iscsi_login {struct isert_conn* req; int first_request; } ;
struct iscsi_conn {int login_comp; int login_req_comp; struct iscsi_conn* context; } ;


 int isert_err (char*,struct isert_conn*) ;
 int isert_info (char*,struct isert_conn*) ;
 int isert_rx_login_req (struct isert_conn*) ;
 int reinit_completion (int *) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int
isert_get_login_rx(struct iscsi_conn *conn, struct iscsi_login *login)
{
 struct isert_conn *isert_conn = conn->context;
 int ret;

 isert_info("before login_req comp conn: %p\n", isert_conn);
 ret = wait_for_completion_interruptible(&isert_conn->login_req_comp);
 if (ret) {
  isert_err("isert_conn %p interrupted before got login req\n",
     isert_conn);
  return ret;
 }
 reinit_completion(&isert_conn->login_req_comp);







 if (!login->first_request)
  return 0;

 isert_rx_login_req(isert_conn);

 isert_info("before login_comp conn: %p\n", conn);
 ret = wait_for_completion_interruptible(&isert_conn->login_comp);
 if (ret)
  return ret;

 isert_info("processing login->req: %p\n", login->req);

 return 0;
}
