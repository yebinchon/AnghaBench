
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int read_only; int lock; int bm; int fail_io; int bitmap_lock; } ;


 int dm_bm_set_read_only (int ) ;
 int down_write (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int up_write (int *) ;

void dm_clone_metadata_set_read_only(struct dm_clone_metadata *cmd)
{
 unsigned long flags;

 down_write(&cmd->lock);

 spin_lock_irqsave(&cmd->bitmap_lock, flags);
 cmd->read_only = 1;
 spin_unlock_irqrestore(&cmd->bitmap_lock, flags);

 if (!cmd->fail_io)
  dm_bm_set_read_only(cmd->bm);

 up_write(&cmd->lock);
}
