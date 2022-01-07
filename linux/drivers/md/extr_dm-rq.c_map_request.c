
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int q; } ;
struct mapped_device {int dummy; } ;
struct dm_target {TYPE_1__* type; } ;
struct dm_rq_target_io {int * clone; int info; struct dm_target* ti; struct request* orig; struct mapped_device* md; } ;
typedef int blk_status_t ;
struct TYPE_2__ {int (* clone_and_map_rq ) (struct dm_target*,struct request*,int *,struct request**) ;int (* release_clone_rq ) (struct request*,int *) ;} ;


 int BLK_STS_DEV_RESOURCE ;
 int BLK_STS_IOERR ;
 int BLK_STS_RESOURCE ;
 int BUG () ;
 int DMWARN (char*,int) ;





 int GFP_ATOMIC ;
 int blk_mq_cleanup_rq (struct request*) ;
 int blk_rq_pos (struct request*) ;
 int blk_rq_unprep_clone (struct request*) ;
 int disk_devt (int ) ;
 int dm_disk (struct mapped_device*) ;
 int dm_dispatch_clone_request (struct request*,struct request*) ;
 int dm_kill_unmapped_request (struct request*,int ) ;
 int dm_requeue_original_request (struct dm_rq_target_io*,int) ;
 int setup_clone (struct request*,struct request*,struct dm_rq_target_io*,int ) ;
 int stub1 (struct dm_target*,struct request*,int *,struct request**) ;
 int stub2 (struct request*,int *) ;
 int stub3 (struct request*,int *) ;
 int trace_block_rq_remap (int ,struct request*,int ,int ) ;

__attribute__((used)) static int map_request(struct dm_rq_target_io *tio)
{
 int r;
 struct dm_target *ti = tio->ti;
 struct mapped_device *md = tio->md;
 struct request *rq = tio->orig;
 struct request *clone = ((void*)0);
 blk_status_t ret;

 r = ti->type->clone_and_map_rq(ti, rq, &tio->info, &clone);
 switch (r) {
 case 128:

  break;
 case 130:
  if (setup_clone(clone, rq, tio, GFP_ATOMIC)) {

   ti->type->release_clone_rq(clone, &tio->info);
   return 129;
  }


  trace_block_rq_remap(clone->q, clone, disk_devt(dm_disk(md)),
         blk_rq_pos(rq));
  ret = dm_dispatch_clone_request(clone, rq);
  if (ret == BLK_STS_RESOURCE || ret == BLK_STS_DEV_RESOURCE) {
   blk_rq_unprep_clone(clone);
   blk_mq_cleanup_rq(clone);
   tio->ti->type->release_clone_rq(clone, &tio->info);
   tio->clone = ((void*)0);
   return 129;
  }
  break;
 case 129:

  break;
 case 132:

  dm_requeue_original_request(tio, 1);
  break;
 case 131:

  dm_kill_unmapped_request(rq, BLK_STS_IOERR);
  break;
 default:
  DMWARN("unimplemented target map return value: %d", r);
  BUG();
 }

 return r;
}
