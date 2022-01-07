
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int sector_t ;
typedef int dm_block_t ;


 int THIN_METADATA_BLOCK_SIZE ;
 int get_metadata_dev_size (struct block_device*) ;
 int sector_div (int ,int ) ;

__attribute__((used)) static dm_block_t get_metadata_dev_size_in_blocks(struct block_device *bdev)
{
 sector_t metadata_dev_size = get_metadata_dev_size(bdev);

 sector_div(metadata_dev_size, THIN_METADATA_BLOCK_SIZE);

 return metadata_dev_size;
}
