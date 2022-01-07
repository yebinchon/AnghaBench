
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sector_t ;


 scalar_t__ MAX_DISCARD_BLOCKS ;
 int sector_div (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool too_many_discard_blocks(sector_t discard_block_size,
        sector_t origin_size)
{
 (void) sector_div(origin_size, discard_block_size);

 return origin_size > MAX_DISCARD_BLOCKS;
}
