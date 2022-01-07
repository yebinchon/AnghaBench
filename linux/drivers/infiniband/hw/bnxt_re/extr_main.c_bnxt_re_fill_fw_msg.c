
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_fw_msg {int msg_len; int resp_max_len; int timeout; void* resp; void* msg; } ;



__attribute__((used)) static void bnxt_re_fill_fw_msg(struct bnxt_fw_msg *fw_msg, void *msg,
    int msg_len, void *resp, int resp_max_len,
    int timeout)
{
 fw_msg->msg = msg;
 fw_msg->msg_len = msg_len;
 fw_msg->resp = resp;
 fw_msg->resp_max_len = resp_max_len;
 fw_msg->timeout = timeout;
}
