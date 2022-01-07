
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct bitmap {TYPE_1__ counts; scalar_t__ allclean; } ;
typedef int sector_t ;
typedef int bitmap_counter_t ;


 int NEEDED_MASK ;
 int md_bitmap_count_page (TYPE_1__*,int ,int) ;
 int* md_bitmap_get_counter (TYPE_1__*,int ,int *,int) ;
 int md_bitmap_set_pending (TYPE_1__*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void md_bitmap_set_memory_bits(struct bitmap *bitmap, sector_t offset, int needed)
{





 sector_t secs;
 bitmap_counter_t *bmc;
 spin_lock_irq(&bitmap->counts.lock);
 bmc = md_bitmap_get_counter(&bitmap->counts, offset, &secs, 1);
 if (!bmc) {
  spin_unlock_irq(&bitmap->counts.lock);
  return;
 }
 if (!*bmc) {
  *bmc = 2;
  md_bitmap_count_page(&bitmap->counts, offset, 1);
  md_bitmap_set_pending(&bitmap->counts, offset);
  bitmap->allclean = 0;
 }
 if (needed)
  *bmc |= NEEDED_MASK;
 spin_unlock_irq(&bitmap->counts.lock);
}
