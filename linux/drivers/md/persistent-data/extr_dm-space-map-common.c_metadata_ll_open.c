
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_disk {int tm; int mi_le; int bitmap_root; } ;
struct dm_block {int dummy; } ;


 int dm_block_data (struct dm_block*) ;
 int dm_tm_read_lock (int ,int ,int *,struct dm_block**) ;
 int dm_tm_unlock (int ,struct dm_block*) ;
 int index_validator ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int metadata_ll_open(struct ll_disk *ll)
{
 int r;
 struct dm_block *block;

 r = dm_tm_read_lock(ll->tm, ll->bitmap_root,
       &index_validator, &block);
 if (r)
  return r;

 memcpy(&ll->mi_le, dm_block_data(block), sizeof(ll->mi_le));
 dm_tm_unlock(ll->tm, block);

 return 0;
}
