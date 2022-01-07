
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct mapped_device {int dummy; } ;
struct dm_rq_target_io {scalar_t__ clone; TYPE_2__* ti; struct request* orig; struct mapped_device* md; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* release_clone_rq ) (scalar_t__,int *) ;} ;


 int blk_rq_unprep_clone (scalar_t__) ;
 int dm_mq_delay_requeue_request (struct request*,unsigned long) ;
 int rq_completed (struct mapped_device*) ;
 int rq_end_stats (struct mapped_device*,struct request*) ;
 int stub1 (scalar_t__,int *) ;

__attribute__((used)) static void dm_requeue_original_request(struct dm_rq_target_io *tio, bool delay_requeue)
{
 struct mapped_device *md = tio->md;
 struct request *rq = tio->orig;
 unsigned long delay_ms = delay_requeue ? 100 : 0;

 rq_end_stats(md, rq);
 if (tio->clone) {
  blk_rq_unprep_clone(tio->clone);
  tio->ti->type->release_clone_rq(tio->clone, ((void*)0));
 }

 dm_mq_delay_requeue_request(rq, delay_ms);
 rq_completed(md);
}
