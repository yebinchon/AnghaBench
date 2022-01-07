
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_dev {int sb; } ;


 unsigned int BDEV_CACHE_MODE (int *) ;

__attribute__((used)) static unsigned int cache_mode(struct cached_dev *dc)
{
 return BDEV_CACHE_MODE(&dc->sb);
}
