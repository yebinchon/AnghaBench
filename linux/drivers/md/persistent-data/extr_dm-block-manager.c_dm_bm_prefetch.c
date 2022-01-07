
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block_manager {int bufio; } ;
typedef int dm_block_t ;


 int dm_bufio_prefetch (int ,int ,int) ;

void dm_bm_prefetch(struct dm_block_manager *bm, dm_block_t b)
{
 dm_bufio_prefetch(bm->bufio, b, 1);
}
