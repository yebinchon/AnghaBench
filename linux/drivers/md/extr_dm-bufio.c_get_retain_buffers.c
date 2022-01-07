
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {unsigned long sectors_per_block_bits; unsigned long block_size; } ;


 unsigned long READ_ONCE (int ) ;
 unsigned long SECTOR_SHIFT ;
 int dm_bufio_retain_bytes ;
 scalar_t__ likely (int) ;

__attribute__((used)) static unsigned long get_retain_buffers(struct dm_bufio_client *c)
{
 unsigned long retain_bytes = READ_ONCE(dm_bufio_retain_bytes);
 if (likely(c->sectors_per_block_bits >= 0))
  retain_bytes >>= c->sectors_per_block_bits + SECTOR_SHIFT;
 else
  retain_bytes /= c->block_size;
 return retain_bytes;
}
