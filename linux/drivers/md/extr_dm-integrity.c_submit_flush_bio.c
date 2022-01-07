
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_integrity_io {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct dm_integrity_c {int commit_work; int commit_wq; TYPE_1__ endio_wait; int flush_bio_list; } ;
struct bio {int dummy; } ;


 int bio_list_add (int *,struct bio*) ;
 struct bio* dm_bio_from_per_bio_data (struct dm_integrity_io*,int) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void submit_flush_bio(struct dm_integrity_c *ic, struct dm_integrity_io *dio)
{
 struct bio *bio;
 unsigned long flags;

 spin_lock_irqsave(&ic->endio_wait.lock, flags);
 bio = dm_bio_from_per_bio_data(dio, sizeof(struct dm_integrity_io));
 bio_list_add(&ic->flush_bio_list, bio);
 spin_unlock_irqrestore(&ic->endio_wait.lock, flags);

 queue_work(ic->commit_wq, &ic->commit_work);
}
