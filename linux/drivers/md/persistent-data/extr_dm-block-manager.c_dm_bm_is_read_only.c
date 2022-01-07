
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block_manager {int read_only; } ;



bool dm_bm_is_read_only(struct dm_block_manager *bm)
{
 return bm->read_only;
}
