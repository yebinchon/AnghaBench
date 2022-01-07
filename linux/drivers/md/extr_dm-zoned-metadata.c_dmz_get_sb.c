
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmz_metadata {TYPE_1__* sb; } ;
struct dmz_mblock {int data; } ;
struct TYPE_2__ {struct dmz_mblock* mblk; int sb; } ;


 int ENOMEM ;
 struct dmz_mblock* dmz_alloc_mblock (struct dmz_metadata*,int ) ;
 int dmz_free_mblock (struct dmz_metadata*,struct dmz_mblock*) ;
 int dmz_read_sb (struct dmz_metadata*,unsigned int) ;

__attribute__((used)) static int dmz_get_sb(struct dmz_metadata *zmd, unsigned int set)
{
 struct dmz_mblock *mblk;
 int ret;


 mblk = dmz_alloc_mblock(zmd, 0);
 if (!mblk)
  return -ENOMEM;

 zmd->sb[set].mblk = mblk;
 zmd->sb[set].sb = mblk->data;


 ret = dmz_read_sb(zmd, set);
 if (ret) {
  dmz_free_mblock(zmd, mblk);
  zmd->sb[set].mblk = ((void*)0);
  return ret;
 }

 return 0;
}
