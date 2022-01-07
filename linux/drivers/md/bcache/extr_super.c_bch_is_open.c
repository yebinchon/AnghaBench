
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;


 scalar_t__ bch_is_open_backing (struct block_device*) ;
 scalar_t__ bch_is_open_cache (struct block_device*) ;

__attribute__((used)) static bool bch_is_open(struct block_device *bdev)
{
 return bch_is_open_cache(bdev) || bch_is_open_backing(bdev);
}
