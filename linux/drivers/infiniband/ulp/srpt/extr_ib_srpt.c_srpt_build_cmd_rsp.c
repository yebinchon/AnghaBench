
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_4__ {int scsi_sense_length; } ;
struct TYPE_3__ {struct srp_rsp* buf; } ;
struct srpt_send_ioctx {TYPE_2__ cmd; int * sense_data; TYPE_1__ ioctx; } ;
struct srpt_rdma_ch {int max_ti_iu_len; int req_lim_delta; } ;
struct srp_rsp {int status; void* sense_data_len; int flags; int tag; void* req_lim_delta; int opcode; } ;


 int BUG_ON (int) ;
 int BUILD_BUG_ON (int) ;
 int MIN_MAX_RSP_SIZE ;
 int SRP_RSP ;
 int SRP_RSP_FLAG_SNSVALID ;
 int WARN_ON (int) ;
 int atomic_xchg (int *,int ) ;
 void* cpu_to_be32 (int) ;
 int memcpy (struct srp_rsp*,int const*,int) ;
 int memset (struct srp_rsp*,int ,int) ;
 int pr_warn (char*,int,int) ;

__attribute__((used)) static int srpt_build_cmd_rsp(struct srpt_rdma_ch *ch,
         struct srpt_send_ioctx *ioctx, u64 tag,
         int status)
{
 struct srp_rsp *srp_rsp;
 const u8 *sense_data;
 int sense_data_len, max_sense_len;





 WARN_ON(status & 1);

 srp_rsp = ioctx->ioctx.buf;
 BUG_ON(!srp_rsp);

 sense_data = ioctx->sense_data;
 sense_data_len = ioctx->cmd.scsi_sense_length;
 WARN_ON(sense_data_len > sizeof(ioctx->sense_data));

 memset(srp_rsp, 0, sizeof(*srp_rsp));
 srp_rsp->opcode = SRP_RSP;
 srp_rsp->req_lim_delta =
  cpu_to_be32(1 + atomic_xchg(&ch->req_lim_delta, 0));
 srp_rsp->tag = tag;
 srp_rsp->status = status;

 if (sense_data_len) {
  BUILD_BUG_ON(MIN_MAX_RSP_SIZE <= sizeof(*srp_rsp));
  max_sense_len = ch->max_ti_iu_len - sizeof(*srp_rsp);
  if (sense_data_len > max_sense_len) {
   pr_warn("truncated sense data from %d to %d bytes\n",
    sense_data_len, max_sense_len);
   sense_data_len = max_sense_len;
  }

  srp_rsp->flags |= SRP_RSP_FLAG_SNSVALID;
  srp_rsp->sense_data_len = cpu_to_be32(sense_data_len);
  memcpy(srp_rsp + 1, sense_data, sense_data_len);
 }

 return sizeof(*srp_rsp) + sense_data_len;
}
