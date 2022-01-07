
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_dev {TYPE_1__* bdev; } ;
typedef int sector_t ;
struct TYPE_2__ {int bd_inode; } ;


 int SECTOR_SHIFT ;
 int i_size_read (int ) ;

__attribute__((used)) static sector_t get_dev_size(struct dm_dev *dev)
{
 return i_size_read(dev->bdev->bd_inode) >> SECTOR_SHIFT;
}
