
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef scalar_t__ sector_t ;


 int BDEVNAME_SIZE ;
 int DMWARN (char*,int ,int ) ;
 int THIN_METADATA_MAX_SECTORS ;
 scalar_t__ THIN_METADATA_MAX_SECTORS_WARNING ;
 int bdevname (struct block_device*,char*) ;
 scalar_t__ get_dev_size (struct block_device*) ;

__attribute__((used)) static void warn_if_metadata_device_too_big(struct block_device *bdev)
{
 sector_t metadata_dev_size = get_dev_size(bdev);
 char buffer[BDEVNAME_SIZE];

 if (metadata_dev_size > THIN_METADATA_MAX_SECTORS_WARNING)
  DMWARN("Metadata device %s is larger than %u sectors: excess space will not be used.",
         bdevname(bdev, buffer), THIN_METADATA_MAX_SECTORS);
}
