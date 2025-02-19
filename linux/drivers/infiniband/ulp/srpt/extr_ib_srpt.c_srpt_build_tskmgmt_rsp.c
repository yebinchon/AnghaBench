
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_2__ {struct srp_rsp* buf; } ;
struct srpt_send_ioctx {TYPE_1__ ioctx; } ;
struct srpt_rdma_ch {int req_lim_delta; } ;
struct srp_rsp {int * data; void* resp_data_len; int flags; int tag; void* req_lim_delta; int opcode; } ;


 int BUG_ON (int) ;
 int SRP_RSP ;
 int SRP_RSP_FLAG_RSPVALID ;
 int atomic_xchg (int *,int ) ;
 void* cpu_to_be32 (int) ;
 int memset (struct srp_rsp*,int ,int) ;

__attribute__((used)) static int srpt_build_tskmgmt_rsp(struct srpt_rdma_ch *ch,
      struct srpt_send_ioctx *ioctx,
      u8 rsp_code, u64 tag)
{
 struct srp_rsp *srp_rsp;
 int resp_data_len;
 int resp_len;

 resp_data_len = 4;
 resp_len = sizeof(*srp_rsp) + resp_data_len;

 srp_rsp = ioctx->ioctx.buf;
 BUG_ON(!srp_rsp);
 memset(srp_rsp, 0, sizeof(*srp_rsp));

 srp_rsp->opcode = SRP_RSP;
 srp_rsp->req_lim_delta =
  cpu_to_be32(1 + atomic_xchg(&ch->req_lim_delta, 0));
 srp_rsp->tag = tag;

 srp_rsp->flags |= SRP_RSP_FLAG_RSPVALID;
 srp_rsp->resp_data_len = cpu_to_be32(resp_data_len);
 srp_rsp->data[3] = rsp_code;

 return resp_len;
}
