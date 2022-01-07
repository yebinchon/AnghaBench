
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_clone_metadata {int bitset_root; int bitset_info; int region_map; int nr_regions; } ;


 unsigned long BITS_PER_LONG ;
 int DMERR (char*) ;
 int dm_bitset_set_bit (int *,int ,unsigned long,int *) ;
 unsigned long min (int ,unsigned long) ;
 scalar_t__ test_bit (unsigned long,int ) ;

__attribute__((used)) static int __update_metadata_word(struct dm_clone_metadata *cmd, unsigned long word)
{
 int r;
 unsigned long index = word * BITS_PER_LONG;
 unsigned long max_index = min(cmd->nr_regions, (word + 1) * BITS_PER_LONG);

 while (index < max_index) {
  if (test_bit(index, cmd->region_map)) {
   r = dm_bitset_set_bit(&cmd->bitset_info, cmd->bitset_root,
           index, &cmd->bitset_root);

   if (r) {
    DMERR("dm_bitset_set_bit failed");
    return r;
   }
  }
  index++;
 }

 return 0;
}
