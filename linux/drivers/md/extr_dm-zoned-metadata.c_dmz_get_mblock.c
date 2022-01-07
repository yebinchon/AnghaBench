
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int mblk_lock; } ;
struct dmz_mblock {int state; } ;
typedef int sector_t ;


 int DMZ_META_ERROR ;
 int DMZ_META_READING ;
 int EIO ;
 struct dmz_mblock* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dmz_mblock*) ;
 int TASK_UNINTERRUPTIBLE ;
 struct dmz_mblock* dmz_get_mblock_fast (struct dmz_metadata*,int ) ;
 struct dmz_mblock* dmz_get_mblock_slow (struct dmz_metadata*,int ) ;
 int dmz_release_mblock (struct dmz_metadata*,struct dmz_mblock*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_on_bit_io (int *,int ,int ) ;

__attribute__((used)) static struct dmz_mblock *dmz_get_mblock(struct dmz_metadata *zmd,
      sector_t mblk_no)
{
 struct dmz_mblock *mblk;


 spin_lock(&zmd->mblk_lock);
 mblk = dmz_get_mblock_fast(zmd, mblk_no);
 spin_unlock(&zmd->mblk_lock);

 if (!mblk) {

  mblk = dmz_get_mblock_slow(zmd, mblk_no);
  if (IS_ERR(mblk))
   return mblk;
 }


 wait_on_bit_io(&mblk->state, DMZ_META_READING,
         TASK_UNINTERRUPTIBLE);
 if (test_bit(DMZ_META_ERROR, &mblk->state)) {
  dmz_release_mblock(zmd, mblk);
  return ERR_PTR(-EIO);
 }

 return mblk;
}
