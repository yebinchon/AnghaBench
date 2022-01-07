
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned total_nr_blocks_needed(unsigned nr_full_blocks,
           unsigned nr_entries_in_last_block)
{
 return nr_full_blocks + (nr_entries_in_last_block ? 1 : 0);
}
