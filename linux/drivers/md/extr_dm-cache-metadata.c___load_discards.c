
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dm_cache_metadata {int discard_block_size; int discard_nr_blocks; int discard_root; int discard_info; scalar_t__ clean_when_opened; } ;
struct dm_bitset_cursor {int dummy; } ;
typedef int (* load_discard_fn ) (void*,int ,int ,int) ;


 int dm_bitset_cursor_begin (int *,int ,int,struct dm_bitset_cursor*) ;
 int dm_bitset_cursor_end (struct dm_bitset_cursor*) ;
 int dm_bitset_cursor_get_value (struct dm_bitset_cursor*) ;
 int dm_bitset_cursor_next (struct dm_bitset_cursor*) ;
 int dm_bitset_flush (int *,int ,int *) ;
 int from_dblock (int ) ;
 int to_dblock (int) ;

__attribute__((used)) static int __load_discards(struct dm_cache_metadata *cmd,
      load_discard_fn fn, void *context)
{
 int r = 0;
 uint32_t b;
 struct dm_bitset_cursor c;

 if (from_dblock(cmd->discard_nr_blocks) == 0)

  return 0;

 if (cmd->clean_when_opened) {
  r = dm_bitset_flush(&cmd->discard_info, cmd->discard_root, &cmd->discard_root);
  if (r)
   return r;

  r = dm_bitset_cursor_begin(&cmd->discard_info, cmd->discard_root,
        from_dblock(cmd->discard_nr_blocks), &c);
  if (r)
   return r;

  for (b = 0; ; b++) {
   r = fn(context, cmd->discard_block_size, to_dblock(b),
          dm_bitset_cursor_get_value(&c));
   if (r)
    break;

   if (b >= (from_dblock(cmd->discard_nr_blocks) - 1))
    break;

   r = dm_bitset_cursor_next(&c);
   if (r)
    break;
  }

  dm_bitset_cursor_end(&c);

 } else {
  for (b = 0; b < from_dblock(cmd->discard_nr_blocks); b++) {
   r = fn(context, cmd->discard_block_size, to_dblock(b), 0);
   if (r)
    return r;
  }
 }

 return r;
}
