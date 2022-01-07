
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_request {struct scsi_cmnd* scmnd; } ;
struct srp_rdma_ch {int lock; } ;
struct scsi_device {int dummy; } ;
struct scsi_cmnd {struct scsi_device* device; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct scsi_cmnd *srp_claim_req(struct srp_rdma_ch *ch,
           struct srp_request *req,
           struct scsi_device *sdev,
           struct scsi_cmnd *scmnd)
{
 unsigned long flags;

 spin_lock_irqsave(&ch->lock, flags);
 if (req->scmnd &&
     (!sdev || req->scmnd->device == sdev) &&
     (!scmnd || req->scmnd == scmnd)) {
  scmnd = req->scmnd;
  req->scmnd = ((void*)0);
 } else {
  scmnd = ((void*)0);
 }
 spin_unlock_irqrestore(&ch->lock, flags);

 return scmnd;
}
