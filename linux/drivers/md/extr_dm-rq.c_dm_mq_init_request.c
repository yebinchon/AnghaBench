
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct mapped_device {scalar_t__ init_tio_pdu; } ;
struct TYPE_2__ {struct dm_rq_target_io* ptr; } ;
struct dm_rq_target_io {TYPE_1__ info; struct mapped_device* md; } ;
struct blk_mq_tag_set {struct mapped_device* driver_data; } ;


 struct dm_rq_target_io* blk_mq_rq_to_pdu (struct request*) ;

__attribute__((used)) static int dm_mq_init_request(struct blk_mq_tag_set *set, struct request *rq,
         unsigned int hctx_idx, unsigned int numa_node)
{
 struct mapped_device *md = set->driver_data;
 struct dm_rq_target_io *tio = blk_mq_rq_to_pdu(rq);





 tio->md = md;

 if (md->init_tio_pdu) {

  tio->info.ptr = tio + 1;
 }

 return 0;
}
