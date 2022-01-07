
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pgpath {int dummy; } ;
struct multipath {int process_queued_bios; int flags; int lock; int queued_bios; int current_pgpath; } ;
struct TYPE_2__ {int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;


 int EAGAIN ;
 struct pgpath* ERR_PTR (int ) ;
 int MPATHF_PG_INIT_REQUIRED ;
 int MPATHF_QUEUE_IF_NO_PATH ;
 int MPATHF_QUEUE_IO ;
 struct pgpath* READ_ONCE (int ) ;
 int bio_list_add (int *,struct bio*) ;
 struct pgpath* choose_pgpath (struct multipath*,int ) ;
 int kmultipathd ;
 int pg_init_all_paths (struct multipath*) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static struct pgpath *__map_bio(struct multipath *m, struct bio *bio)
{
 struct pgpath *pgpath;
 unsigned long flags;
 bool queue_io;


 pgpath = READ_ONCE(m->current_pgpath);
 queue_io = test_bit(MPATHF_QUEUE_IO, &m->flags);
 if (!pgpath || !queue_io)
  pgpath = choose_pgpath(m, bio->bi_iter.bi_size);

 if ((pgpath && queue_io) ||
     (!pgpath && test_bit(MPATHF_QUEUE_IF_NO_PATH, &m->flags))) {

  spin_lock_irqsave(&m->lock, flags);
  bio_list_add(&m->queued_bios, bio);
  spin_unlock_irqrestore(&m->lock, flags);


  if (queue_io || test_bit(MPATHF_PG_INIT_REQUIRED, &m->flags))
   pg_init_all_paths(m);
  else if (!queue_io)
   queue_work(kmultipathd, &m->process_queued_bios);

  return ERR_PTR(-EAGAIN);
 }

 return pgpath;
}
