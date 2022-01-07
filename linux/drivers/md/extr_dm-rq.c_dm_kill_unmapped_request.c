
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int rq_flags; } ;
typedef int blk_status_t ;


 int RQF_FAILED ;
 int dm_complete_request (struct request*,int ) ;

__attribute__((used)) static void dm_kill_unmapped_request(struct request *rq, blk_status_t error)
{
 rq->rq_flags |= RQF_FAILED;
 dm_complete_request(rq, error);
}
