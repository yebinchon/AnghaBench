
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int changed; int dirty_root; int dirty_info; int cache_blocks; } ;


 int DMERR (char*) ;
 int EINVAL ;
 int dm_bitset_del (int *,int ) ;
 int dm_bitset_new (int *,int *,unsigned int,int ,unsigned long*) ;
 unsigned int from_cblock (int ) ;
 int is_dirty_callback ;

__attribute__((used)) static int __set_dirty_bits_v2(struct dm_cache_metadata *cmd, unsigned nr_bits, unsigned long *bits)
{
 int r = 0;


 if (nr_bits != from_cblock(cmd->cache_blocks)) {
  DMERR("dirty bitset is wrong size");
  return -EINVAL;
 }

 r = dm_bitset_del(&cmd->dirty_info, cmd->dirty_root);
 if (r)
  return r;

 cmd->changed = 1;
 return dm_bitset_new(&cmd->dirty_info, &cmd->dirty_root, nr_bits, is_dirty_callback, bits);
}
