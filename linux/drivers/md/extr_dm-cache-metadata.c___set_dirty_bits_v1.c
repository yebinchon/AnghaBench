
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int dummy; } ;


 int __dirty (struct dm_cache_metadata*,int ,int ) ;
 int test_bit (unsigned int,unsigned long*) ;
 int to_cblock (unsigned int) ;

__attribute__((used)) static int __set_dirty_bits_v1(struct dm_cache_metadata *cmd, unsigned nr_bits, unsigned long *bits)
{
 int r;
 unsigned i;
 for (i = 0; i < nr_bits; i++) {
  r = __dirty(cmd, to_cblock(i), test_bit(i, bits));
  if (r)
   return r;
 }

 return 0;
}
