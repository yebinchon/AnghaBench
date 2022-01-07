
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int lock; int retry_on_resume_list; } ;
struct dm_thin_endio_hook {struct thin_c* tc; } ;
struct bio {int dummy; } ;


 int bio_list_add (int *,struct bio*) ;
 struct dm_thin_endio_hook* dm_per_bio_data (struct bio*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void retry_on_resume(struct bio *bio)
{
 struct dm_thin_endio_hook *h = dm_per_bio_data(bio, sizeof(struct dm_thin_endio_hook));
 struct thin_c *tc = h->tc;
 unsigned long flags;

 spin_lock_irqsave(&tc->lock, flags);
 bio_list_add(&tc->retry_on_resume_list, bio);
 spin_unlock_irqrestore(&tc->lock, flags);
}
