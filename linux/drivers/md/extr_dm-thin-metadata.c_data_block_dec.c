
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v_le ;
typedef int uint64_t ;
typedef int uint32_t ;
struct dm_space_map {int dummy; } ;
typedef int __le64 ;


 int dm_sm_dec_block (struct dm_space_map*,int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,void const*,int) ;
 int unpack_block_time (int ,int *,int *) ;

__attribute__((used)) static void data_block_dec(void *context, const void *value_le)
{
 struct dm_space_map *sm = context;
 __le64 v_le;
 uint64_t b;
 uint32_t t;

 memcpy(&v_le, value_le, sizeof(v_le));
 unpack_block_time(le64_to_cpu(v_le), &b, &t);
 dm_sm_dec_block(sm, b);
}
