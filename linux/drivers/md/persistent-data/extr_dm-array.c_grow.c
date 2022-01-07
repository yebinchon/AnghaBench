
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resize {scalar_t__ new_nr_full_blocks; scalar_t__ old_nr_full_blocks; int new_nr_entries_in_last_block; scalar_t__ old_nr_entries_in_last_block; } ;


 int grow_add_tail_block (struct resize*) ;
 int grow_extend_tail_block (struct resize*,int ) ;
 int grow_needs_more_blocks (struct resize*) ;

__attribute__((used)) static int grow(struct resize *resize)
{
 if (resize->new_nr_full_blocks > resize->old_nr_full_blocks)
  return grow_needs_more_blocks(resize);

 else if (resize->old_nr_entries_in_last_block)
  return grow_extend_tail_block(resize, resize->new_nr_entries_in_last_block);

 else
  return grow_add_tail_block(resize);
}
