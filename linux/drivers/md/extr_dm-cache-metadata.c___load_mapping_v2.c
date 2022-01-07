
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dm_cache_metadata {scalar_t__ clean_when_opened; } ;
struct dm_bitset_cursor {int dummy; } ;
struct dm_array_cursor {int dummy; } ;
typedef int mapping ;
typedef int (* load_mapping_fn ) (void*,int ,int ,int,int ,int) ;
typedef int hint ;
typedef int dm_oblock_t ;
typedef int __le64 ;
typedef int __le32 ;


 int DMERR (char*,unsigned long long) ;
 unsigned int M_VALID ;
 int dm_array_cursor_get_value (struct dm_array_cursor*,void**) ;
 int dm_bitset_cursor_get_value (struct dm_bitset_cursor*) ;
 scalar_t__ from_cblock (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int to_cblock (int ) ;
 int unpack_value (int ,int *,unsigned int*) ;

__attribute__((used)) static int __load_mapping_v2(struct dm_cache_metadata *cmd,
        uint64_t cb, bool hints_valid,
        struct dm_array_cursor *mapping_cursor,
        struct dm_array_cursor *hint_cursor,
        struct dm_bitset_cursor *dirty_cursor,
        load_mapping_fn fn, void *context)
{
 int r = 0;

 __le64 mapping;
 __le32 hint = 0;

 __le64 *mapping_value_le;
 __le32 *hint_value_le;

 dm_oblock_t oblock;
 unsigned flags;
 bool dirty = 1;

 dm_array_cursor_get_value(mapping_cursor, (void **) &mapping_value_le);
 memcpy(&mapping, mapping_value_le, sizeof(mapping));
 unpack_value(mapping, &oblock, &flags);

 if (flags & M_VALID) {
  if (hints_valid) {
   dm_array_cursor_get_value(hint_cursor, (void **) &hint_value_le);
   memcpy(&hint, hint_value_le, sizeof(hint));
  }
  if (cmd->clean_when_opened)
   dirty = dm_bitset_cursor_get_value(dirty_cursor);

  r = fn(context, oblock, to_cblock(cb), dirty,
         le32_to_cpu(hint), hints_valid);
  if (r) {
   DMERR("policy couldn't load cache block %llu",
         (unsigned long long) from_cblock(to_cblock(cb)));
  }
 }

 return r;
}
