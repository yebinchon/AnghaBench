
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {unsigned long nr_words; int bitmap_lock; } ;
struct dirty_map {scalar_t__ changed; int dirty_words; } ;


 int __clear_bit (unsigned long,int ) ;
 int __metadata_commit (struct dm_clone_metadata*) ;
 int __update_metadata_word (struct dm_clone_metadata*,unsigned long) ;
 unsigned long find_next_bit (int ,unsigned long,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int __flush_dmap(struct dm_clone_metadata *cmd, struct dirty_map *dmap)
{
 int r;
 unsigned long word, flags;

 word = 0;
 do {
  word = find_next_bit(dmap->dirty_words, cmd->nr_words, word);

  if (word == cmd->nr_words)
   break;

  r = __update_metadata_word(cmd, word);

  if (r)
   return r;

  __clear_bit(word, dmap->dirty_words);
  word++;
 } while (word < cmd->nr_words);

 r = __metadata_commit(cmd);

 if (r)
  return r;


 spin_lock_irqsave(&cmd->bitmap_lock, flags);
 dmap->changed = 0;
 spin_unlock_irqrestore(&cmd->bitmap_lock, flags);

 return 0;
}
