
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct srp_target_port {struct srp_rdma_ch* ch; int scsi_host; } ;
struct srp_rdma_ch {int dummy; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_2__ {int lun; int host; } ;


 int FAILED ;
 int KERN_ERR ;
 int SRP_TAG_NO_REQ ;
 int SRP_TSK_LUN_RESET ;
 int SUCCESS ;
 struct srp_target_port* host_to_target (int ) ;
 int shost_printk (int ,int ,char*) ;
 scalar_t__ srp_send_tsk_mgmt (struct srp_rdma_ch*,int ,int ,int ,scalar_t__*) ;

__attribute__((used)) static int srp_reset_device(struct scsi_cmnd *scmnd)
{
 struct srp_target_port *target = host_to_target(scmnd->device->host);
 struct srp_rdma_ch *ch;
 u8 status;

 shost_printk(KERN_ERR, target->scsi_host, "SRP reset_device called\n");

 ch = &target->ch[0];
 if (srp_send_tsk_mgmt(ch, SRP_TAG_NO_REQ, scmnd->device->lun,
         SRP_TSK_LUN_RESET, &status))
  return FAILED;
 if (status)
  return FAILED;

 return SUCCESS;
}
