
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tm; } ;
struct dm_array_info {TYPE_1__ btree_info; } ;
typedef int block_le ;
typedef int __le64 ;


 int dm_tm_inc (int ,int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,void const*,int) ;

__attribute__((used)) static void block_inc(void *context, const void *value)
{
 __le64 block_le;
 struct dm_array_info *info = context;

 memcpy(&block_le, value, sizeof(block_le));
 dm_tm_inc(info->btree_info.tm, le64_to_cpu(block_le));
}
