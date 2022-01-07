
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_transaction_manager {int dummy; } ;
struct dm_disk_bitset {int current_index_set; int array_info; } ;


 int bitset_bvt ;
 int dm_array_info_init (int *,struct dm_transaction_manager*,int *) ;

void dm_disk_bitset_init(struct dm_transaction_manager *tm,
    struct dm_disk_bitset *info)
{
 dm_array_info_init(&info->array_info, tm, &bitset_bvt);
 info->current_index_set = 0;
}
