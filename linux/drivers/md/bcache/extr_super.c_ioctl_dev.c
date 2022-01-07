
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {TYPE_1__* bd_disk; } ;
struct bcache_device {int (* ioctl ) (struct bcache_device*,int ,unsigned int,unsigned long) ;} ;
typedef int fmode_t ;
struct TYPE_2__ {struct bcache_device* private_data; } ;


 int stub1 (struct bcache_device*,int ,unsigned int,unsigned long) ;

__attribute__((used)) static int ioctl_dev(struct block_device *b, fmode_t mode,
       unsigned int cmd, unsigned long arg)
{
 struct bcache_device *d = b->bd_disk->private_data;

 return d->ioctl(d, mode, cmd, arg);
}
