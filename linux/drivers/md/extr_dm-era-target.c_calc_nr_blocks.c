
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct era {int sectors_per_block; TYPE_1__* ti; } ;
typedef int dm_block_t ;
struct TYPE_2__ {int len; } ;


 int dm_sector_div_up (int ,int ) ;

__attribute__((used)) static dm_block_t calc_nr_blocks(struct era *era)
{
 return dm_sector_div_up(era->ti->len, era->sectors_per_block);
}
