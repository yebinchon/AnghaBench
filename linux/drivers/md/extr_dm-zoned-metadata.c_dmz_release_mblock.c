
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int mblk_lock; int mblk_lru_list; int mblk_rbtree; } ;
struct dmz_mblock {scalar_t__ ref; int link; int state; int node; } ;


 int DMZ_META_DIRTY ;
 int DMZ_META_ERROR ;
 int dmz_free_mblock (struct dmz_metadata*,struct dmz_mblock*) ;
 int dmz_shrink_mblock_cache (struct dmz_metadata*,int) ;
 int list_add_tail (int *,int *) ;
 int rb_erase (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void dmz_release_mblock(struct dmz_metadata *zmd,
          struct dmz_mblock *mblk)
{

 if (!mblk)
  return;

 spin_lock(&zmd->mblk_lock);

 mblk->ref--;
 if (mblk->ref == 0) {
  if (test_bit(DMZ_META_ERROR, &mblk->state)) {
   rb_erase(&mblk->node, &zmd->mblk_rbtree);
   dmz_free_mblock(zmd, mblk);
  } else if (!test_bit(DMZ_META_DIRTY, &mblk->state)) {
   list_add_tail(&mblk->link, &zmd->mblk_lru_list);
   dmz_shrink_mblock_cache(zmd, 1);
  }
 }

 spin_unlock(&zmd->mblk_lock);
}
