
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int head; } ;
struct mirror_set {unsigned int nr_mirrors; int lock; TYPE_1__ failures; scalar_t__ mirror; } ;
struct bio {int bi_status; } ;
struct TYPE_4__ {struct mirror_set* ms; } ;


 int BLK_STS_NOTSUPP ;
 int DM_RAID1_WRITE_ERROR ;
 scalar_t__ REQ_OP_DISCARD ;
 int bio_endio (struct bio*) ;
 TYPE_2__* bio_get_m (struct bio*) ;
 int bio_list_add (TYPE_1__*,struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 int bio_set_m (struct bio*,int *) ;
 int fail_mirror (scalar_t__,int ) ;
 scalar_t__ likely (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (unsigned int,unsigned long*) ;
 int wakeup_mirrord (struct mirror_set*) ;

__attribute__((used)) static void write_callback(unsigned long error, void *context)
{
 unsigned i;
 struct bio *bio = (struct bio *) context;
 struct mirror_set *ms;
 int should_wake = 0;
 unsigned long flags;

 ms = bio_get_m(bio)->ms;
 bio_set_m(bio, ((void*)0));







 if (likely(!error)) {
  bio_endio(bio);
  return;
 }





 if (bio_op(bio) == REQ_OP_DISCARD) {
  bio->bi_status = BLK_STS_NOTSUPP;
  bio_endio(bio);
  return;
 }

 for (i = 0; i < ms->nr_mirrors; i++)
  if (test_bit(i, &error))
   fail_mirror(ms->mirror + i, DM_RAID1_WRITE_ERROR);






 spin_lock_irqsave(&ms->lock, flags);
 if (!ms->failures.head)
  should_wake = 1;
 bio_list_add(&ms->failures, bio);
 spin_unlock_irqrestore(&ms->lock, flags);
 if (should_wake)
  wakeup_mirrord(ms);
}
