
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ THIN_METADATA_MAX_SECTORS ;
 scalar_t__ get_dev_size (struct block_device*) ;

__attribute__((used)) static sector_t get_metadata_dev_size(struct block_device *bdev)
{
 sector_t metadata_dev_size = get_dev_size(bdev);

 if (metadata_dev_size > THIN_METADATA_MAX_SECTORS)
  metadata_dev_size = THIN_METADATA_MAX_SECTORS;

 return metadata_dev_size;
}
