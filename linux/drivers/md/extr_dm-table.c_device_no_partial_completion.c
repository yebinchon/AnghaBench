
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct dm_dev {int bdev; } ;
typedef int sector_t ;


 int BDEVNAME_SIZE ;
 int bdevname (int ,char*) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static int device_no_partial_completion(struct dm_target *ti, struct dm_dev *dev,
     sector_t start, sector_t len, void *data)
{
 char b[BDEVNAME_SIZE];


 return (strncmp(bdevname(dev->bdev, b), "nvme", 4) == 0);
}
