
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_request {int dummy; } ;
struct srp_rdma_ch {int lock; int req_lim; } ;
struct scsi_cmnd {int dummy; } ;
typedef scalar_t__ s32 ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int srp_unmap_data (struct scsi_cmnd*,struct srp_rdma_ch*,struct srp_request*) ;

__attribute__((used)) static void srp_free_req(struct srp_rdma_ch *ch, struct srp_request *req,
    struct scsi_cmnd *scmnd, s32 req_lim_delta)
{
 unsigned long flags;

 srp_unmap_data(scmnd, ch, req);

 spin_lock_irqsave(&ch->lock, flags);
 ch->req_lim += req_lim_delta;
 spin_unlock_irqrestore(&ch->lock, flags);
}
