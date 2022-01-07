
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int bd_dev; } ;
typedef int dev_t ;


 scalar_t__ IS_ERR (struct block_device*) ;
 int bdput (struct block_device*) ;
 struct block_device* lookup_bdev (char const*) ;
 int name_to_dev_t (char const*) ;

dev_t dm_get_dev_t(const char *path)
{
 dev_t dev;
 struct block_device *bdev;

 bdev = lookup_bdev(path);
 if (IS_ERR(bdev))
  dev = name_to_dev_t(path);
 else {
  dev = bdev->bd_dev;
  bdput(bdev);
 }

 return dev;
}
