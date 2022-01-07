
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_disk {int dummy; } ;
typedef int dm_block_t ;


 int MAX_METADATA_BITMAPS ;

__attribute__((used)) static dm_block_t metadata_ll_max_entries(struct ll_disk *ll)
{
 return MAX_METADATA_BITMAPS;
}
