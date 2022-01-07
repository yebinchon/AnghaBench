
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int type_lock; } ;


 int mutex_unlock (int *) ;

void dm_unlock_md_type(struct mapped_device *md)
{
 mutex_unlock(&md->type_lock);
}
