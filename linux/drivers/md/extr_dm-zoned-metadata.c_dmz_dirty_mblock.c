
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int mblk_lock; int mblk_dirty_list; } ;
struct dmz_mblock {int link; int state; } ;


 int DMZ_META_DIRTY ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void dmz_dirty_mblock(struct dmz_metadata *zmd, struct dmz_mblock *mblk)
{
 spin_lock(&zmd->mblk_lock);
 if (!test_and_set_bit(DMZ_META_DIRTY, &mblk->state))
  list_add_tail(&mblk->link, &zmd->mblk_dirty_list);
 spin_unlock(&zmd->mblk_lock);
}
