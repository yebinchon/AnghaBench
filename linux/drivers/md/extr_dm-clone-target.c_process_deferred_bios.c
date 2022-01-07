
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int lock; int deferred_bios; } ;
struct bio_list {int dummy; } ;


 struct bio_list BIO_EMPTY_LIST ;
 scalar_t__ bio_list_empty (struct bio_list*) ;
 int bio_list_init (int *) ;
 int bio_list_merge (struct bio_list*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int submit_bios (struct bio_list*) ;

__attribute__((used)) static void process_deferred_bios(struct clone *clone)
{
 unsigned long flags;
 struct bio_list bios = BIO_EMPTY_LIST;

 spin_lock_irqsave(&clone->lock, flags);
 bio_list_merge(&bios, &clone->deferred_bios);
 bio_list_init(&clone->deferred_bios);
 spin_unlock_irqrestore(&clone->lock, flags);

 if (bio_list_empty(&bios))
  return;

 submit_bios(&bios);
}
