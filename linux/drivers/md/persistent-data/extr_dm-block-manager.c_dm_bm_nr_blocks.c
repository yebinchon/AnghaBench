
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block_manager {int bufio; } ;
typedef int dm_block_t ;


 int dm_bufio_get_device_size (int ) ;

dm_block_t dm_bm_nr_blocks(struct dm_block_manager *bm)
{
 return dm_bufio_get_device_size(bm->bufio);
}
