
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dmz_metadata {int nr_rnd_zones; TYPE_3__* sb; TYPE_1__* dev; } ;
struct dmz_mblock {TYPE_2__* data; } ;
struct TYPE_6__ {struct dmz_mblock* mblk; scalar_t__ block; TYPE_2__* sb; } ;
struct TYPE_5__ {int magic; } ;
struct TYPE_4__ {unsigned int zone_nr_blocks; } ;


 scalar_t__ DMZ_MAGIC ;
 int EIO ;
 int ENOMEM ;
 struct dmz_mblock* dmz_alloc_mblock (struct dmz_metadata*,int ) ;
 int dmz_free_mblock (struct dmz_metadata*,struct dmz_mblock*) ;
 scalar_t__ dmz_read_sb (struct dmz_metadata*,int) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int dmz_lookup_secondary_sb(struct dmz_metadata *zmd)
{
 unsigned int zone_nr_blocks = zmd->dev->zone_nr_blocks;
 struct dmz_mblock *mblk;
 int i;


 mblk = dmz_alloc_mblock(zmd, 0);
 if (!mblk)
  return -ENOMEM;

 zmd->sb[1].mblk = mblk;
 zmd->sb[1].sb = mblk->data;


 zmd->sb[1].block = zmd->sb[0].block + zone_nr_blocks;
 for (i = 0; i < zmd->nr_rnd_zones - 1; i++) {
  if (dmz_read_sb(zmd, 1) != 0)
   break;
  if (le32_to_cpu(zmd->sb[1].sb->magic) == DMZ_MAGIC)
   return 0;
  zmd->sb[1].block += zone_nr_blocks;
 }

 dmz_free_mblock(zmd, mblk);
 zmd->sb[1].mblk = ((void*)0);

 return -EIO;
}
