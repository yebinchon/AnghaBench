
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int mblk_sem; } ;


 int down_read (int *) ;

void dmz_lock_metadata(struct dmz_metadata *zmd)
{
 down_read(&zmd->mblk_sem);
}
