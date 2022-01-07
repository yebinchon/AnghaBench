
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct dm_dev {scalar_t__ dax_dev; } ;
typedef int sector_t ;


 scalar_t__ dax_synchronous (scalar_t__) ;

__attribute__((used)) static int device_dax_synchronous(struct dm_target *ti, struct dm_dev *dev,
      sector_t start, sector_t len, void *data)
{
 return dev->dax_dev && dax_synchronous(dev->dax_dev);
}
