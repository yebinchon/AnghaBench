
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ index; } ;
struct ll_disk {TYPE_1__ mi_le; } ;
struct disk_index_entry {int dummy; } ;
typedef scalar_t__ dm_block_t ;


 int memcpy (struct disk_index_entry*,scalar_t__,int) ;

__attribute__((used)) static int metadata_ll_load_ie(struct ll_disk *ll, dm_block_t index,
          struct disk_index_entry *ie)
{
 memcpy(ie, ll->mi_le.index + index, sizeof(*ie));
 return 0;
}
