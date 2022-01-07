
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pgpath {int dummy; } ;
struct multipath {int process_queued_bios; int lock; int queued_bios; int flags; int current_pgpath; } ;
struct TYPE_2__ {int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;


 int EAGAIN ;
 struct pgpath* ERR_PTR (int ) ;
 int MPATHF_QUEUE_IF_NO_PATH ;
 struct pgpath* READ_ONCE (int ) ;
 int bio_list_add (int *,struct bio*) ;
 struct pgpath* choose_pgpath (struct multipath*,int ) ;
 int kmultipathd ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static struct pgpath *__map_bio_fast(struct multipath *m, struct bio *bio)
{
 struct pgpath *pgpath;
 unsigned long flags;






 pgpath = READ_ONCE(m->current_pgpath);
 if (!pgpath)
  pgpath = choose_pgpath(m, bio->bi_iter.bi_size);

 if (!pgpath) {
  if (test_bit(MPATHF_QUEUE_IF_NO_PATH, &m->flags)) {

   spin_lock_irqsave(&m->lock, flags);
   bio_list_add(&m->queued_bios, bio);
   spin_unlock_irqrestore(&m->lock, flags);
   queue_work(kmultipathd, &m->process_queued_bios);

   return ERR_PTR(-EAGAIN);
  }
  return ((void*)0);
 }

 return pgpath;
}
