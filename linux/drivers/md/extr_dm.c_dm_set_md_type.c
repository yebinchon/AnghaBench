
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int type; int type_lock; } ;
typedef enum dm_queue_mode { ____Placeholder_dm_queue_mode } dm_queue_mode ;


 int BUG_ON (int) ;
 int mutex_is_locked (int *) ;

void dm_set_md_type(struct mapped_device *md, enum dm_queue_mode type)
{
 BUG_ON(!mutex_is_locked(&md->type_lock));
 md->type = type;
}
