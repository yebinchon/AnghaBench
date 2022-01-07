
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int status; } ;
struct search {TYPE_4__* orig_bio; TYPE_1__ iop; TYPE_3__* d; int start_time; } ;
struct TYPE_10__ {int bi_status; } ;
struct TYPE_9__ {TYPE_2__* disk; } ;
struct TYPE_8__ {int part0; int queue; } ;


 int bio_endio (TYPE_4__*) ;
 int bio_op (TYPE_4__*) ;
 int generic_end_io_acct (int ,int ,int *,int ) ;
 int trace_bcache_request_end (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static void bio_complete(struct search *s)
{
 if (s->orig_bio) {
  generic_end_io_acct(s->d->disk->queue, bio_op(s->orig_bio),
        &s->d->disk->part0, s->start_time);

  trace_bcache_request_end(s->d, s->orig_bio);
  s->orig_bio->bi_status = s->iop.status;
  bio_endio(s->orig_bio);
  s->orig_bio = ((void*)0);
 }
}
