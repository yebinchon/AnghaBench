
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int mblk_shrinker; } ;


 int dmz_cleanup_metadata (struct dmz_metadata*) ;
 int kfree (struct dmz_metadata*) ;
 int unregister_shrinker (int *) ;

void dmz_dtr_metadata(struct dmz_metadata *zmd)
{
 unregister_shrinker(&zmd->mblk_shrinker);
 dmz_cleanup_metadata(zmd);
 kfree(zmd);
}
