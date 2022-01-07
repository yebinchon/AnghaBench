
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int bitmap_lock; int region_map; struct dirty_map* current_dmap; scalar_t__ read_only; } ;
struct dirty_map {int changed; int dirty_words; } ;


 unsigned long BITS_PER_LONG ;
 int EPERM ;
 int __set_bit (unsigned long,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (unsigned long,int ) ;

int dm_clone_cond_set_range(struct dm_clone_metadata *cmd, unsigned long start,
       unsigned long nr_regions)
{
 int r = 0;
 struct dirty_map *dmap;
 unsigned long word, region_nr, flags;

 spin_lock_irqsave(&cmd->bitmap_lock, flags);

 if (cmd->read_only) {
  r = -EPERM;
  goto out;
 }

 dmap = cmd->current_dmap;
 for (region_nr = start; region_nr < (start + nr_regions); region_nr++) {
  if (!test_bit(region_nr, cmd->region_map)) {
   word = region_nr / BITS_PER_LONG;
   __set_bit(word, dmap->dirty_words);
   __set_bit(region_nr, cmd->region_map);
   dmap->changed = 1;
  }
 }
out:
 spin_unlock_irqrestore(&cmd->bitmap_lock, flags);

 return r;
}
