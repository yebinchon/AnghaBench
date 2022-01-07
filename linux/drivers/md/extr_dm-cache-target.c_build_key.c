
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cell_key_v2 {void* block_end; void* block_begin; scalar_t__ dev; scalar_t__ virtual; } ;
typedef int dm_oblock_t ;


 void* from_oblock (int ) ;

__attribute__((used)) static void build_key(dm_oblock_t begin, dm_oblock_t end, struct dm_cell_key_v2 *key)
{
 key->virtual = 0;
 key->dev = 0;
 key->block_begin = from_oblock(begin);
 key->block_end = from_oblock(end);
}
