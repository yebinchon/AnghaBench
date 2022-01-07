
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_ctx {unsigned long region_entries_per_slot_bits; int region_entries_per_slot; unsigned int region_table_entry_bits; } ;



__attribute__((used)) static void switch_get_position(struct switch_ctx *sctx, unsigned long region_nr,
    unsigned long *region_index, unsigned *bit)
{
 if (sctx->region_entries_per_slot_bits >= 0) {
  *region_index = region_nr >> sctx->region_entries_per_slot_bits;
  *bit = region_nr & (sctx->region_entries_per_slot - 1);
 } else {
  *region_index = region_nr / sctx->region_entries_per_slot;
  *bit = region_nr % sctx->region_entries_per_slot;
 }

 *bit *= sctx->region_table_entry_bits;
}
