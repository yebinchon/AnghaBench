
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {TYPE_1__* bd_disk; } ;
struct bcache_device {int cl; int flags; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct bcache_device* private_data; } ;


 int BCACHE_DEV_CLOSING ;
 int ENXIO ;
 int closure_get (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int open_dev(struct block_device *b, fmode_t mode)
{
 struct bcache_device *d = b->bd_disk->private_data;

 if (test_bit(BCACHE_DEV_CLOSING, &d->flags))
  return -ENXIO;

 closure_get(&d->cl);
 return 0;
}
