
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int mblk_flush_lock; } ;


 int mutex_unlock (int *) ;

void dmz_unlock_flush(struct dmz_metadata *zmd)
{
 mutex_unlock(&zmd->mblk_flush_lock);
}
