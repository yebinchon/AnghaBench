
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool_c {TYPE_1__* metadata_dev; } ;
typedef int dm_block_t ;
struct TYPE_2__ {int bdev; } ;


 int get_metadata_dev_size_in_blocks (int ) ;
 int min (int,int) ;

__attribute__((used)) static dm_block_t calc_metadata_threshold(struct pool_c *pt)
{





 dm_block_t quarter = get_metadata_dev_size_in_blocks(pt->metadata_dev->bdev) / 4;
 return min((dm_block_t)1024ULL , quarter);
}
