
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dax_device {TYPE_1__* ops; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;
struct TYPE_2__ {int (* dax_supported ) (struct dax_device*,struct block_device*,int,int ,int ) ;} ;


 int dax_alive (struct dax_device*) ;
 int stub1 (struct dax_device*,struct block_device*,int,int ,int ) ;

bool dax_supported(struct dax_device *dax_dev, struct block_device *bdev,
  int blocksize, sector_t start, sector_t len)
{
 if (!dax_alive(dax_dev))
  return 0;

 return dax_dev->ops->dax_supported(dax_dev, bdev, blocksize, start, len);
}
