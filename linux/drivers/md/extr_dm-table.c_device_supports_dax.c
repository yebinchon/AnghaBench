
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct dm_dev {int bdev; int dax_dev; } ;
typedef int sector_t ;


 int generic_fsdax_supported (int ,int ,int,int ,int ) ;

int device_supports_dax(struct dm_target *ti, struct dm_dev *dev,
   sector_t start, sector_t len, void *data)
{
 int blocksize = *(int *) data;

 return generic_fsdax_supported(dev->dax_dev, dev->bdev, blocksize,
           start, len);
}
