
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resize {int root; int value; int new_nr_entries_in_last_block; int new_nr_full_blocks; int max_entries; int size_of_block; int info; } ;


 int insert_new_ablock (int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int grow_add_tail_block(struct resize *resize)
{
 return insert_new_ablock(resize->info, resize->size_of_block,
     resize->max_entries,
     resize->new_nr_full_blocks,
     resize->new_nr_entries_in_last_block,
     resize->value, &resize->root);
}
