
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int lock; int bitmap_lock; struct dirty_map* current_dmap; struct dirty_map* dmap; int bm; scalar_t__ fail_io; } ;
struct dirty_map {int changed; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ WARN_ON (int ) ;
 int __flush_dmap (struct dm_clone_metadata*,struct dirty_map*) ;
 scalar_t__ dm_bm_is_read_only (int ) ;
 int down_write (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int up_write (int *) ;

int dm_clone_metadata_commit(struct dm_clone_metadata *cmd)
{
 int r = -EPERM;
 unsigned long flags;
 struct dirty_map *dmap, *next_dmap;

 down_write(&cmd->lock);

 if (cmd->fail_io || dm_bm_is_read_only(cmd->bm))
  goto out;


 dmap = cmd->current_dmap;


 next_dmap = (dmap == &cmd->dmap[0]) ? &cmd->dmap[1] : &cmd->dmap[0];





 if (WARN_ON(next_dmap->changed)) {
  r = -EINVAL;
  goto out;
 }


 spin_lock_irqsave(&cmd->bitmap_lock, flags);
 cmd->current_dmap = next_dmap;
 spin_unlock_irqrestore(&cmd->bitmap_lock, flags);





 r = __flush_dmap(cmd, dmap);
out:
 up_write(&cmd->lock);

 return r;
}
