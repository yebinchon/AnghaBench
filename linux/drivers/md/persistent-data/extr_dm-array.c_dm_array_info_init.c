
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_transaction_manager {int dummy; } ;
struct dm_btree_value_type {int size; int equal; int dec; int inc; struct dm_array_info* context; } ;
struct TYPE_2__ {int levels; struct dm_transaction_manager* tm; struct dm_btree_value_type value_type; } ;
struct dm_array_info {TYPE_1__ btree_info; int value_type; } ;
typedef int __le64 ;


 int block_dec ;
 int block_equal ;
 int block_inc ;
 int memcpy (int *,struct dm_btree_value_type*,int) ;

void dm_array_info_init(struct dm_array_info *info,
   struct dm_transaction_manager *tm,
   struct dm_btree_value_type *vt)
{
 struct dm_btree_value_type *bvt = &info->btree_info.value_type;

 memcpy(&info->value_type, vt, sizeof(info->value_type));
 info->btree_info.tm = tm;
 info->btree_info.levels = 1;

 bvt->context = info;
 bvt->size = sizeof(__le64);
 bvt->inc = block_inc;
 bvt->dec = block_dec;
 bvt->equal = block_equal;
}
