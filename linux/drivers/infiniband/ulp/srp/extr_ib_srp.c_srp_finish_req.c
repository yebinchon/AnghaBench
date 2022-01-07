
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_request {int dummy; } ;
struct srp_rdma_ch {int dummy; } ;
struct scsi_device {int dummy; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;


 struct scsi_cmnd* srp_claim_req (struct srp_rdma_ch*,struct srp_request*,struct scsi_device*,int *) ;
 int srp_free_req (struct srp_rdma_ch*,struct srp_request*,struct scsi_cmnd*,int ) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void srp_finish_req(struct srp_rdma_ch *ch, struct srp_request *req,
      struct scsi_device *sdev, int result)
{
 struct scsi_cmnd *scmnd = srp_claim_req(ch, req, sdev, ((void*)0));

 if (scmnd) {
  srp_free_req(ch, req, scmnd, 0);
  scmnd->result = result;
  scmnd->scsi_done(scmnd);
 }
}
