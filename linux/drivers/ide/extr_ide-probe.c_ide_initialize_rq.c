
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_2__ {int sense; } ;
struct ide_request {int sense; TYPE_1__ sreq; int * special; } ;


 struct ide_request* blk_mq_rq_to_pdu (struct request*) ;
 int scsi_req_init (TYPE_1__*) ;

__attribute__((used)) static void ide_initialize_rq(struct request *rq)
{
 struct ide_request *req = blk_mq_rq_to_pdu(rq);

 req->special = ((void*)0);
 scsi_req_init(&req->sreq);
 req->sreq.sense = req->sense;
}
