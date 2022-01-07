
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_disk {int bitmap_root; int bitmap_info; } ;
struct disk_index_entry {int dummy; } ;
typedef int dm_block_t ;


 int __dm_bless_for_disk (struct disk_index_entry*) ;
 int dm_btree_insert (int *,int ,int *,struct disk_index_entry*,int *) ;

__attribute__((used)) static int disk_ll_save_ie(struct ll_disk *ll, dm_block_t index,
      struct disk_index_entry *ie)
{
 __dm_bless_for_disk(ie);
 return dm_btree_insert(&ll->bitmap_info, ll->bitmap_root,
          &index, ie, &ll->bitmap_root);
}
