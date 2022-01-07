
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct dm_rq_target_io {int error; } ;
typedef int blk_status_t ;


 int blk_mq_complete_request (struct request*) ;
 struct dm_rq_target_io* tio_from_request (struct request*) ;

__attribute__((used)) static void dm_complete_request(struct request *rq, blk_status_t error)
{
 struct dm_rq_target_io *tio = tio_from_request(rq);

 tio->error = error;
 blk_mq_complete_request(rq);
}
