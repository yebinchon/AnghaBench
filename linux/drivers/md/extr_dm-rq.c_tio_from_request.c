
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct dm_rq_target_io {int dummy; } ;


 struct dm_rq_target_io* blk_mq_rq_to_pdu (struct request*) ;

__attribute__((used)) static struct dm_rq_target_io *tio_from_request(struct request *rq)
{
 return blk_mq_rq_to_pdu(rq);
}
