
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct srp_target_port {size_t ch_count; TYPE_2__* rport; int scsi_host; struct srp_rdma_ch* ch; } ;
struct srp_request {int dummy; } ;
struct srp_rdma_ch {int dummy; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; int request; scalar_t__ host_scribble; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {int lun; int host; } ;


 int DID_ABORT ;
 int FAILED ;
 int FAST_IO_FAIL ;
 int KERN_ERR ;
 scalar_t__ SRP_RPORT_LOST ;
 int SRP_TSK_ABORT_TASK ;
 int SUCCESS ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int blk_mq_unique_tag (int ) ;
 size_t blk_mq_unique_tag_to_hwq (int ) ;
 struct srp_target_port* host_to_target (int ) ;
 int shost_printk (int ,int ,char*,...) ;
 int srp_claim_req (struct srp_rdma_ch*,struct srp_request*,int *,struct scsi_cmnd*) ;
 int srp_free_req (struct srp_rdma_ch*,struct srp_request*,struct scsi_cmnd*,int ) ;
 scalar_t__ srp_send_tsk_mgmt (struct srp_rdma_ch*,int ,int ,int ,int *) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int srp_abort(struct scsi_cmnd *scmnd)
{
 struct srp_target_port *target = host_to_target(scmnd->device->host);
 struct srp_request *req = (struct srp_request *) scmnd->host_scribble;
 u32 tag;
 u16 ch_idx;
 struct srp_rdma_ch *ch;
 int ret;

 shost_printk(KERN_ERR, target->scsi_host, "SRP abort called\n");

 if (!req)
  return SUCCESS;
 tag = blk_mq_unique_tag(scmnd->request);
 ch_idx = blk_mq_unique_tag_to_hwq(tag);
 if (WARN_ON_ONCE(ch_idx >= target->ch_count))
  return SUCCESS;
 ch = &target->ch[ch_idx];
 if (!srp_claim_req(ch, req, ((void*)0), scmnd))
  return SUCCESS;
 shost_printk(KERN_ERR, target->scsi_host,
       "Sending SRP abort for tag %#x\n", tag);
 if (srp_send_tsk_mgmt(ch, tag, scmnd->device->lun,
         SRP_TSK_ABORT_TASK, ((void*)0)) == 0)
  ret = SUCCESS;
 else if (target->rport->state == SRP_RPORT_LOST)
  ret = FAST_IO_FAIL;
 else
  ret = FAILED;
 if (ret == SUCCESS) {
  srp_free_req(ch, req, scmnd, 0);
  scmnd->result = DID_ABORT << 16;
  scmnd->scsi_done(scmnd);
 }

 return ret;
}
