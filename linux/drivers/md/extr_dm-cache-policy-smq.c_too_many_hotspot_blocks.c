
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int sector_t ;



__attribute__((used)) static bool too_many_hotspot_blocks(sector_t origin_size,
        sector_t hotspot_block_size,
        unsigned nr_hotspot_blocks)
{
 return (hotspot_block_size * nr_hotspot_blocks) > origin_size;
}
