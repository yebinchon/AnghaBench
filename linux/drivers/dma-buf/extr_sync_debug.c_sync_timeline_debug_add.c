
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_timeline {int sync_timeline_list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sync_timeline_list_head ;
 int sync_timeline_list_lock ;

void sync_timeline_debug_add(struct sync_timeline *obj)
{
 unsigned long flags;

 spin_lock_irqsave(&sync_timeline_list_lock, flags);
 list_add_tail(&obj->sync_timeline_list, &sync_timeline_list_head);
 spin_unlock_irqrestore(&sync_timeline_list_lock, flags);
}
