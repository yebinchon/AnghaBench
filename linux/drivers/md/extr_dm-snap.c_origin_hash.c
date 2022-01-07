
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int bd_dev; } ;


 int ORIGIN_MASK ;

__attribute__((used)) static unsigned origin_hash(struct block_device *bdev)
{
 return bdev->bd_dev & ORIGIN_MASK;
}
