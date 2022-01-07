
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_verity_io {int work; TYPE_1__* v; } ;
struct bio {int bi_status; struct dm_verity_io* bi_private; } ;
struct TYPE_2__ {int verify_wq; } ;


 int INIT_WORK (int *,int ) ;
 int queue_work (int ,int *) ;
 int verity_fec_is_enabled (TYPE_1__*) ;
 int verity_finish_io (struct dm_verity_io*,int ) ;
 int verity_work ;

__attribute__((used)) static void verity_end_io(struct bio *bio)
{
 struct dm_verity_io *io = bio->bi_private;

 if (bio->bi_status && !verity_fec_is_enabled(io->v)) {
  verity_finish_io(io, bio->bi_status);
  return;
 }

 INIT_WORK(&io->work, verity_work);
 queue_work(io->v->verify_wq, &io->work);
}
