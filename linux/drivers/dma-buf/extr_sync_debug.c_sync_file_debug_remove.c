
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_file {int sync_file_list; } ;


 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sync_file_list_lock ;

void sync_file_debug_remove(struct sync_file *sync_file)
{
 unsigned long flags;

 spin_lock_irqsave(&sync_file_list_lock, flags);
 list_del(&sync_file->sync_file_list);
 spin_unlock_irqrestore(&sync_file_list_lock, flags);
}
