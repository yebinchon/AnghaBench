
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int lock; int retry_on_resume_list; int deferred_bio_list; } ;
struct bio_list {int dummy; } ;


 int BLK_STS_DM_REQUEUE ;
 int __merge_bio_list (struct bio_list*,int *) ;
 int bio_list_init (struct bio_list*) ;
 int error_bio_list (struct bio_list*,int ) ;
 int requeue_deferred_cells (struct thin_c*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void requeue_io(struct thin_c *tc)
{
 struct bio_list bios;
 unsigned long flags;

 bio_list_init(&bios);

 spin_lock_irqsave(&tc->lock, flags);
 __merge_bio_list(&bios, &tc->deferred_bio_list);
 __merge_bio_list(&bios, &tc->retry_on_resume_list);
 spin_unlock_irqrestore(&tc->lock, flags);

 error_bio_list(&bios, BLK_STS_DM_REQUEUE);
 requeue_deferred_cells(tc);
}
