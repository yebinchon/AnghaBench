
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_disk {int bitmap_root; int bitmap_info; } ;


 int dm_btree_empty (int *,int *) ;

__attribute__((used)) static int disk_ll_init_index(struct ll_disk *ll)
{
 return dm_btree_empty(&ll->bitmap_info, &ll->bitmap_root);
}
