
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_conn_param {int retry_count; int rnr_retry_count; int flags; int private_data_len; void* private_data; int initiator_depth; } ;
struct rdma_cm_id {int dummy; } ;
struct isert_conn {int snd_w_inv; int initiator_depth; struct rdma_cm_id* cm_id; } ;
struct iser_cm_hdr {int retry_count; int rnr_retry_count; int flags; int private_data_len; void* private_data; int initiator_depth; } ;
typedef int rsp_hdr ;


 int ISERT_SEND_W_INV_NOT_USED ;
 int ISERT_ZBVA_NOT_USED ;
 int isert_err (char*,int) ;
 int memset (struct rdma_conn_param*,int ,int) ;
 int rdma_accept (struct rdma_cm_id*,struct rdma_conn_param*) ;

__attribute__((used)) static int
isert_rdma_accept(struct isert_conn *isert_conn)
{
 struct rdma_cm_id *cm_id = isert_conn->cm_id;
 struct rdma_conn_param cp;
 int ret;
 struct iser_cm_hdr rsp_hdr;

 memset(&cp, 0, sizeof(struct rdma_conn_param));
 cp.initiator_depth = isert_conn->initiator_depth;
 cp.retry_count = 7;
 cp.rnr_retry_count = 7;

 memset(&rsp_hdr, 0, sizeof(rsp_hdr));
 rsp_hdr.flags = ISERT_ZBVA_NOT_USED;
 if (!isert_conn->snd_w_inv)
  rsp_hdr.flags = rsp_hdr.flags | ISERT_SEND_W_INV_NOT_USED;
 cp.private_data = (void *)&rsp_hdr;
 cp.private_data_len = sizeof(rsp_hdr);

 ret = rdma_accept(cm_id, &cp);
 if (ret) {
  isert_err("rdma_accept() failed with: %d\n", ret);
  return ret;
 }

 return 0;
}
