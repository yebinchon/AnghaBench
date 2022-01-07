
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_conn {int login_req_len; int login_comp; struct iscsi_conn* conn; struct iser_rx_desc* login_req_buf; } ;
struct iser_rx_desc {void* data; int iscsi_header; } ;
struct iscsi_login_req {int flags; void* isid; int tsih; int cid; int exp_statsn; int itt; int cmdsn; int max_version; int min_version; } ;
struct iscsi_login {int leading_connection; int current_stage; scalar_t__ first_request; int * req_buf; int * req; void* tsih; void* cid; void* initial_exp_statsn; int init_task_tag; void* cmd_sn; int * isid; int version_max; int version_min; } ;
struct iscsi_conn {int login_work; struct iscsi_login* conn_login; } ;


 int ISCSI_FLAG_LOGIN_CURRENT_STAGE_MASK ;
 int ISCSI_HDR_LEN ;
 int MAX_KEY_VALUE_PAIRS ;
 int WARN_ON_ONCE (int) ;
 void* be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 int complete (int *) ;
 int isert_dbg (char*,int,int,int ) ;
 int isert_info (char*,struct isert_conn*) ;
 int memcpy (int *,void*,int) ;
 int min (int,int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void
isert_rx_login_req(struct isert_conn *isert_conn)
{
 struct iser_rx_desc *rx_desc = isert_conn->login_req_buf;
 int rx_buflen = isert_conn->login_req_len;
 struct iscsi_conn *conn = isert_conn->conn;
 struct iscsi_login *login = conn->conn_login;
 int size;

 isert_info("conn %p\n", isert_conn);

 WARN_ON_ONCE(!login);

 if (login->first_request) {
  struct iscsi_login_req *login_req =
   (struct iscsi_login_req *)&rx_desc->iscsi_header;




  login->leading_connection = (!login_req->tsih) ? 1 : 0;
  login->current_stage =
   (login_req->flags & ISCSI_FLAG_LOGIN_CURRENT_STAGE_MASK)
    >> 2;
  login->version_min = login_req->min_version;
  login->version_max = login_req->max_version;
  memcpy(login->isid, login_req->isid, 6);
  login->cmd_sn = be32_to_cpu(login_req->cmdsn);
  login->init_task_tag = login_req->itt;
  login->initial_exp_statsn = be32_to_cpu(login_req->exp_statsn);
  login->cid = be16_to_cpu(login_req->cid);
  login->tsih = be16_to_cpu(login_req->tsih);
 }

 memcpy(&login->req[0], (void *)&rx_desc->iscsi_header, ISCSI_HDR_LEN);

 size = min(rx_buflen, MAX_KEY_VALUE_PAIRS);
 isert_dbg("Using login payload size: %d, rx_buflen: %d "
    "MAX_KEY_VALUE_PAIRS: %d\n", size, rx_buflen,
    MAX_KEY_VALUE_PAIRS);
 memcpy(login->req_buf, &rx_desc->data[0], size);

 if (login->first_request) {
  complete(&isert_conn->login_comp);
  return;
 }
 schedule_delayed_work(&conn->login_work, 0);
}
