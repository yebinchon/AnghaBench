
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dm_cache_policy {int dummy; } ;
struct dm_cache_metadata {int dirty_cursor; int hint_cursor; int mapping_cursor; int cache_blocks; int dirty_root; int dirty_info; int hint_root; int hint_info; int root; int info; } ;
typedef int load_mapping_fn ;


 int DMERR (char*) ;
 int __load_mapping_v1 (struct dm_cache_metadata*,int,int,int *,int *,int ,void*) ;
 int __load_mapping_v2 (struct dm_cache_metadata*,int,int,int *,int *,int *,int ,void*) ;
 int dm_array_cursor_begin (int *,int ,int *) ;
 int dm_array_cursor_end (int *) ;
 int dm_array_cursor_next (int *) ;
 int dm_bitset_cursor_begin (int *,int ,int,int *) ;
 int dm_bitset_cursor_end (int *) ;
 int dm_bitset_cursor_next (int *) ;
 int from_cblock (int ) ;
 int hints_array_available (struct dm_cache_metadata*,struct dm_cache_policy*) ;
 scalar_t__ separate_dirty_bits (struct dm_cache_metadata*) ;

__attribute__((used)) static int __load_mappings(struct dm_cache_metadata *cmd,
      struct dm_cache_policy *policy,
      load_mapping_fn fn, void *context)
{
 int r;
 uint64_t cb;

 bool hints_valid = hints_array_available(cmd, policy);

 if (from_cblock(cmd->cache_blocks) == 0)

  return 0;

 r = dm_array_cursor_begin(&cmd->info, cmd->root, &cmd->mapping_cursor);
 if (r)
  return r;

 if (hints_valid) {
  r = dm_array_cursor_begin(&cmd->hint_info, cmd->hint_root, &cmd->hint_cursor);
  if (r) {
   dm_array_cursor_end(&cmd->mapping_cursor);
   return r;
  }
 }

 if (separate_dirty_bits(cmd)) {
  r = dm_bitset_cursor_begin(&cmd->dirty_info, cmd->dirty_root,
        from_cblock(cmd->cache_blocks),
        &cmd->dirty_cursor);
  if (r) {
   dm_array_cursor_end(&cmd->hint_cursor);
   dm_array_cursor_end(&cmd->mapping_cursor);
   return r;
  }
 }

 for (cb = 0; ; cb++) {
  if (separate_dirty_bits(cmd))
   r = __load_mapping_v2(cmd, cb, hints_valid,
           &cmd->mapping_cursor,
           &cmd->hint_cursor,
           &cmd->dirty_cursor,
           fn, context);
  else
   r = __load_mapping_v1(cmd, cb, hints_valid,
           &cmd->mapping_cursor, &cmd->hint_cursor,
           fn, context);
  if (r)
   goto out;




  if (cb >= (from_cblock(cmd->cache_blocks) - 1))
   break;

  r = dm_array_cursor_next(&cmd->mapping_cursor);
  if (r) {
   DMERR("dm_array_cursor_next for mapping failed");
   goto out;
  }

  if (hints_valid) {
   r = dm_array_cursor_next(&cmd->hint_cursor);
   if (r) {
    dm_array_cursor_end(&cmd->hint_cursor);
    hints_valid = 0;
   }
  }

  if (separate_dirty_bits(cmd)) {
   r = dm_bitset_cursor_next(&cmd->dirty_cursor);
   if (r) {
    DMERR("dm_bitset_cursor_next for dirty failed");
    goto out;
   }
  }
 }
out:
 dm_array_cursor_end(&cmd->mapping_cursor);
 if (hints_valid)
  dm_array_cursor_end(&cmd->hint_cursor);

 if (separate_dirty_bits(cmd))
  dm_bitset_cursor_end(&cmd->dirty_cursor);

 return r;
}
