
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_bufio_client {int sectors_per_block_bits; int block_size; TYPE_1__* bdev; } ;
typedef int sector_t ;
struct TYPE_2__ {int bd_inode; } ;


 int SECTOR_SHIFT ;
 int i_size_read (int ) ;
 scalar_t__ likely (int) ;
 int sector_div (int,int) ;

sector_t dm_bufio_get_device_size(struct dm_bufio_client *c)
{
 sector_t s = i_size_read(c->bdev->bd_inode) >> SECTOR_SHIFT;
 if (likely(c->sectors_per_block_bits >= 0))
  s >>= c->sectors_per_block_bits;
 else
  sector_div(s, c->block_size >> SECTOR_SHIFT);
 return s;
}
