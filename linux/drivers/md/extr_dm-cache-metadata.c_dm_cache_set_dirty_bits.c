
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_metadata {int dummy; } ;


 int WRITE_LOCK (struct dm_cache_metadata*) ;
 int WRITE_UNLOCK (struct dm_cache_metadata*) ;
 int __set_dirty_bits_v1 (struct dm_cache_metadata*,unsigned int,unsigned long*) ;
 int __set_dirty_bits_v2 (struct dm_cache_metadata*,unsigned int,unsigned long*) ;
 scalar_t__ separate_dirty_bits (struct dm_cache_metadata*) ;

int dm_cache_set_dirty_bits(struct dm_cache_metadata *cmd,
       unsigned nr_bits,
       unsigned long *bits)
{
 int r;

 WRITE_LOCK(cmd);
 if (separate_dirty_bits(cmd))
  r = __set_dirty_bits_v2(cmd, nr_bits, bits);
 else
  r = __set_dirty_bits_v1(cmd, nr_bits, bits);
 WRITE_UNLOCK(cmd);

 return r;
}
