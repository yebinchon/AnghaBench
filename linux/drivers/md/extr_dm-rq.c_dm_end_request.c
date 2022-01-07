
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {struct dm_rq_target_io* end_io_data; } ;
struct mapped_device {int dummy; } ;
struct dm_rq_target_io {TYPE_2__* ti; struct request* orig; struct mapped_device* md; } ;
typedef int blk_status_t ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* release_clone_rq ) (struct request*,int *) ;} ;


 int blk_mq_end_request (struct request*,int ) ;
 int blk_rq_unprep_clone (struct request*) ;
 int rq_completed (struct mapped_device*) ;
 int rq_end_stats (struct mapped_device*,struct request*) ;
 int stub1 (struct request*,int *) ;

__attribute__((used)) static void dm_end_request(struct request *clone, blk_status_t error)
{
 struct dm_rq_target_io *tio = clone->end_io_data;
 struct mapped_device *md = tio->md;
 struct request *rq = tio->orig;

 blk_rq_unprep_clone(clone);
 tio->ti->type->release_clone_rq(clone, ((void*)0));

 rq_end_stats(md, rq);
 blk_mq_end_request(rq, error);
 rq_completed(md);
}
