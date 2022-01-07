
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int lock; } ;
struct bio_list {int dummy; } ;
typedef int blk_status_t ;


 int __merge_bio_list (struct bio_list*,struct bio_list*) ;
 int bio_list_init (struct bio_list*) ;
 int error_bio_list (struct bio_list*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void error_thin_bio_list(struct thin_c *tc, struct bio_list *master,
  blk_status_t error)
{
 struct bio_list bios;
 unsigned long flags;

 bio_list_init(&bios);

 spin_lock_irqsave(&tc->lock, flags);
 __merge_bio_list(&bios, master);
 spin_unlock_irqrestore(&tc->lock, flags);

 error_bio_list(&bios, error);
}
