
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcache_device {int dummy; } ;
typedef int fmode_t ;


 int ENOTTY ;

__attribute__((used)) static int flash_dev_ioctl(struct bcache_device *d, fmode_t mode,
      unsigned int cmd, unsigned long arg)
{
 return -ENOTTY;
}
